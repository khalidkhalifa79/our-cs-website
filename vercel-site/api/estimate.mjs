function clean(value) {
  return String(value ?? '').replace(/\r/g, '').trim();
}

function label(key) {
  return String(key)
    .replace(/[_-]+/g, ' ')
    .replace(/\b\w/g, function (c) { return c.toUpperCase(); });
}

function safeFilename(name) {
  return String(name || 'attachment')
    .replace(/[\\/:*?"<>|]/g, '_')
    .replace(/[\r\n]/g, '')
    .slice(0, 150);
}

function successRedirect() {
  return new Response(null, {
    status: 303,
    headers: {
      Location: '/estimate-project/?sent=1'
    }
  });
}

function getClientIp(request) {
  const forwarded = request.headers.get('x-forwarded-for');

  if (forwarded) {
    return forwarded.split(',')[0].trim();
  }

  return (
    request.headers.get('x-real-ip') ||
    request.headers.get('cf-connecting-ip') ||
    ''
  );
}

async function verifyTurnstile(token, secret, remoteIp) {
  if (!token || typeof token !== 'string' || token.length > 2048) {
    return {
      success: false,
      'error-codes': ['missing-or-invalid-token']
    };
  }

  const body = new URLSearchParams();
  body.set('secret', secret);
  body.set('response', token);

  if (remoteIp) {
    body.set('remoteip', remoteIp);
  }

  try {
    const response = await fetch(
      'https://challenges.cloudflare.com/turnstile/v0/siteverify',
      {
        method: 'POST',
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded'
        },
        body
      }
    );

    if (!response.ok) {
      return {
        success: false,
        'error-codes': ['siteverify-http-error']
      };
    }

    return await response.json();
  }
  catch (error) {
    console.error('Turnstile verification error:', error);

    return {
      success: false,
      'error-codes': ['siteverify-request-failed']
    };
  }
}

export default {
  async fetch(request) {

    if (request.method !== 'POST') {
      return new Response('Method Not Allowed', {
        status: 405,
        headers: { Allow: 'POST' }
      });
    }

    const apiKey = process.env.RESEND_API_KEY;
    const turnstileSecret = process.env.TURNSTILE_SECRET_KEY;

    if (!apiKey) {
      return new Response('Email configuration missing.', {
        status: 500
      });
    }

    if (!turnstileSecret) {
      console.error('TURNSTILE_SECRET_KEY is missing.');

      return new Response(
        'Security verification configuration missing.',
        { status: 500 }
      );
    }

    try {
      const formData = await request.formData();

      // ------------------------------------------------------
      // 1. HONEYPOT
      // A real visitor never fills this hidden field.
      // Return a normal-looking success response without email.
      // ------------------------------------------------------

      const honeypot = clean(formData.get('website'));

      if (honeypot) {
        console.warn('Estimate spam blocked by honeypot.');
        return successRedirect();
      }

      // ------------------------------------------------------
      // 2. CLOUDFLARE TURNSTILE
      // ------------------------------------------------------

      const turnstileToken = clean(
        formData.get('cf-turnstile-response')
      );

      const verification = await verifyTurnstile(
        turnstileToken,
        turnstileSecret,
        getClientIp(request)
      );

      const allowedHostnames = new Set([
        'our-cs.com',
        'www.our-cs.com'
      ]);

      const validTurnstile =
        verification.success === true &&
        verification.action === 'estimate' &&
        allowedHostnames.has(verification.hostname);

      if (!validTurnstile) {
        console.warn(
          'Estimate blocked by Turnstile:',
          JSON.stringify({
            success: verification.success,
            hostname: verification.hostname,
            action: verification.action,
            errors: verification['error-codes']
          })
        );

        return new Response(
          'Security verification failed. Please refresh the page and try again.',
          { status: 400 }
        );
      }

      // ------------------------------------------------------
      // 3. BASIC SERVER-SIDE FIELD VALIDATION
      // ------------------------------------------------------

      const firstName = clean(formData.get('firstName'));
      const lastName = clean(formData.get('lastName'));
      const emailAddress = clean(formData.get('emailAddress'));
      const projectDescription = clean(
        formData.get('projectDescription')
      );

      if (
        firstName.length < 2 ||
        firstName.length > 80 ||
        lastName.length < 2 ||
        lastName.length > 80
      ) {
        return new Response(
          'Please provide a valid first and last name.',
          { status: 400 }
        );
      }

      if (
        !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(emailAddress) ||
        emailAddress.length > 254
      ) {
        return new Response(
          'Please provide a valid email address.',
          { status: 400 }
        );
      }

      if (projectDescription.length > 1000) {
        return new Response(
          'Project description is too long.',
          { status: 400 }
        );
      }

      // ------------------------------------------------------
      // 4. PREPARE EMAIL
      // ------------------------------------------------------

      const lines = [];
      const attachments = [];

      let replyTo = '';
      let totalFileSize = 0;

      const internalFields = new Set([
        'website',
        'cf-turnstile-response'
      ]);

      for (const [key, value] of formData.entries()) {

        if (internalFields.has(key)) {
          continue;
        }

        if (typeof value === 'string') {

          const text = clean(value);

          if (!text) {
            continue;
          }

          lines.push(label(key) + ': ' + text);

          if (
            !replyTo &&
            key === 'emailAddress' &&
            /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(text)
          ) {
            replyTo = text;
          }

          continue;
        }

        if (
          typeof File !== 'undefined' &&
          value instanceof File &&
          value.size > 0
        ) {
          totalFileSize += value.size;

          if (totalFileSize > 3 * 1024 * 1024) {
            return new Response(
              'Attachments are too large. Please keep total attachments below 3 MB.',
              { status: 413 }
            );
          }

          const buffer = Buffer.from(
            await value.arrayBuffer()
          );

          attachments.push({
            filename: safeFilename(value.name),
            content: buffer.toString('base64')
          });

          lines.push(
            label(key) +
            ': ' +
            safeFilename(value.name) +
            ' (' +
            Math.round(value.size / 1024) +
            ' KB)'
          );
        }
      }

      if (lines.length === 0 && attachments.length === 0) {
        return new Response(
          'No form data received.',
          { status: 400 }
        );
      }

      const message = [
        'New Project Estimate Request',
        '',
        'A new project estimate request was submitted through the OUR-CS website.',
        '',
        ...lines,
        '',
        'Sent automatically from the OUR-CS website.'
      ].join('\n');

      const payload = {
        from: 'OUR-CS Website <forms@mail.our-cs.com>',
        to: ['info@our-cs.com'],
        subject: 'New Project Estimate Request | OUR-CS',
        text: message
      };

      if (replyTo) {
        payload.reply_to = replyTo;
      }

      if (attachments.length > 0) {
        payload.attachments = attachments;
      }

      // Resend is called ONLY after all anti-spam checks pass.
      const resendResponse = await fetch(
        'https://api.resend.com/emails',
        {
          method: 'POST',
          headers: {
            Authorization: 'Bearer ' + apiKey,
            'Content-Type': 'application/json',
            'User-Agent': 'OUR-CS-Website/1.0'
          },
          body: JSON.stringify(payload)
        }
      );

      const result = await resendResponse.text();

      if (!resendResponse.ok) {
        console.error('Resend error:', result);

        return new Response(
          'Unable to send your estimate request. Please try again.',
          { status: 502 }
        );
      }

      return successRedirect();
    }
    catch (error) {
      console.error('Estimate API error:', error);

      return new Response(
        'Unable to process your estimate request.',
        { status: 500 }
      );
    }
  }
};