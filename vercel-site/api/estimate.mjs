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

export default {
  async fetch(request) {

    if (request.method !== 'POST') {
      return new Response('Method Not Allowed', {
        status: 405,
        headers: { Allow: 'POST' }
      });
    }

    const apiKey = process.env.RESEND_API_KEY;

    if (!apiKey) {
      return new Response('Email configuration missing.', {
        status: 500
      });
    }

    try {
      const formData = await request.formData();

      const lines = [];
      const attachments = [];

      let replyTo = '';
      let totalFileSize = 0;

      for (const [key, value] of formData.entries()) {

        if (typeof value === 'string') {

          const text = clean(value);

          if (!text) {
            continue;
          }

          lines.push(label(key) + ': ' + text);

          if (
            !replyTo &&
            /email/i.test(key) &&
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

      return new Response(null, {
        status: 303,
        headers: {
          Location: '/estimate-project/?sent=1'
        }
      });
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
