import { serve } from 'https://deno.land/std@0.168.0/http/server.ts'
import { createClient } from 'https://esm.sh/@supabase/supabase-js@2'

serve(async (req) => {
  console.log('Function invoked with request:', {
    method: req.method,
    url: req.url,
    headers: Object.fromEntries(req.headers)
  });

  try {
    if (req.method !== 'POST') {
      console.error('Method Not Allowed:', req.method);
      return new Response('Method Not Allowed', { status: 405 })
    }

    const supabaseUrl = Deno.env.get('SUPABASE_URL')
    const supabaseAnonKey = Deno.env.get('SUPABASE_ANON_KEY')

    if (!supabaseUrl || !supabaseAnonKey) {
      console.error('Missing Supabase configuration');
      return new Response('Server configuration error', { status: 500 })
    }

    const supabase = createClient(supabaseUrl, supabaseAnonKey)

    const payload = await req.json()
    console.log('Received payload:', JSON.stringify(payload));
    
    if (!payload.type || payload.type !== 'INSERT' || !payload.record) {
      console.error('Invalid webhook payload:', JSON.stringify(payload));
      return new Response('Invalid webhook payload', { status: 400 })
    }

    const { record } = payload

    // Get the telegram_group_id and bot_token from key_values table
    const { data: keyValues, error: keyValuesError } = await supabase
      .from('key_values')
      .select('key, value')
      .in('key', ['telegram_group_id', 'telegram_bot_token'])

    if (keyValuesError) {
      console.error('Error fetching key values:', keyValuesError);
      return new Response('Failed to fetch key values', { status: 500 })
    }

    if (!keyValues || keyValues.length === 0) {
      console.error('No key values found');
      return new Response('No telegram configuration found', { status: 500 })
    }

    console.log('Retrieved key values:', JSON.stringify(keyValues));

    const telegramGroupId = keyValues.find(kv => kv.key === 'telegram_group_id')?.value
    const telegramBotToken = keyValues.find(kv => kv.key === 'telegram_bot_token')?.value

    if (!telegramGroupId || !telegramBotToken) {
      console.error('Missing telegram configuration:', { telegramGroupId, telegramBotToken });
      return new Response('Missing telegram configuration', { status: 500 })
    }

    // Construct the message
    const message = `*${record.title}*\n${record.message}`

    console.log('Sending message to Telegram:', message);

    // Send the message to Telegram
    const telegramResponse = await fetch(`https://api.telegram.org/bot${telegramBotToken}/sendMessage`, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({
        chat_id: telegramGroupId,
        text: message,
        parse_mode: 'Markdown',
      }),
    })

    if (!telegramResponse.ok) {
      const errorData = await telegramResponse.json()
      console.error('Error sending message to Telegram:', JSON.stringify(errorData));
      return new Response('Failed to send message to Telegram', { status: 500 })
    }

    console.log('Message sent successfully to Telegram');

    return new Response(JSON.stringify({ success: true }), { 
      status: 200,
      headers: { 'Content-Type': 'application/json' }
    })
  } catch (error) {
    console.error('Unhandled error in webhook:', error);
    return new Response('Internal Server Error', { status: 500 })
  }
})