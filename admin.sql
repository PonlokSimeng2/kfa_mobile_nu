alter table public.properties add column if not exists approved_at timestamp with time zone;
alter table public.properties add column if not exists approved_by uuid references public.users(id) on delete set null;
alter table public.properties add column if not exists rejected_at timestamp with time zone;

create extension pg_net;

-- Function to send notification to OneSignal using Supabase Edge Functions
CREATE OR REPLACE FUNCTION public.send_onesignal_notification(
  message TEXT,
  heading TEXT DEFAULT 'Notification'
)
RETURNS VOID AS $$
BEGIN
  PERFORM net.http_post(
    url := 'https://api.onesignal.com/notifications',
    headers := '{"Content-Type": "application/json", "Authorization": "Basic MzYxOTgxYzgtZWFiOC00YThhLWJlMmEtYWNmZGRiOWJkNzdk"}',
    body := json_build_object(
      'target_channel', 'push',
      'included_segments', ARRAY['Subscribed Users'],
      'app_id', '4c477f3d-2679-457e-87b0-57808114f822',
      'contents', json_build_object(
        'en', message,
      ),
      'headings', json_build_object(
        'en', heading,
      )
    )::text
  );
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;
