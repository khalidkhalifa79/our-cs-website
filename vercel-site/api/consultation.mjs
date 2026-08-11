function clean(value) {
  return String(value ?? '').replace(/\r/g, '').trim();
}

function label(key) {
  return String(key)
    .replace(/[_-]+/g, ' ')
    .replace(/\b\w/g, function (c) { return c.toUpperCase(); });
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
      let replyTo = '';

      for (const [key, value] of formData.entries()) {

        if (typeof value !== 'string') {
          continue;
        }

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
      }

      if (lines.length === 0) {
        return new Response('No form data received.', {
          status: 400
        });
      }

      const message = [
        'New Consultation Request',
        '',
        'A new consultation request was submitted through the OUR-CS website.',
        '',
        ...lines,
        '',
        'Sent automatically from the OUR-CS website.'
      ].join('\n');

      const payload = {
        from: 'OUR-CS Website <forms@mail.our-cs.com>',
        to: ['info@our-cs.com'],
        subject: 'New Consultation Request | OUR-CS',
        text: message
      };

      if (replyTo) {
        payload.reply_to = replyTo;
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
          'Unable to send your request. Please try again.',
          { status: 502 }
        );
      }

      return new Response(null, {
        status: 303,
        headers: {
          Location: '/consultation/?sent=1'
        }
      });
    }
    catch (error) {
      console.error('Consultation API error:', error);

      return new Response(
        'Unable to process your request.',
        { status: 500 }
      );
    }
  }
};
