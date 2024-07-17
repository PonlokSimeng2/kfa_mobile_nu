alter table public.properties add column if not exists approved_at timestamp with time zone;
alter table public.properties add column if not exists approved_by uuid references public.users(id) on delete set null;
alter table public.properties add column if not exists rejected_at timestamp with time zone;
alter table public.properties add column if not exists reject_reason text;

alter table public.properties add column if not exists status text default 'pending';
alter table public.properties 
  add constraint check_property_status 
  check (status in ('pending', 'approved', 'rejected'));


create extension if not exists pg_net;

-- Function to send notification to OneSignal using Supabase Edge Functions
CREATE OR REPLACE FUNCTION public.send_onesignal_notification(
  message TEXT,
  heading TEXT,
  user_ids UUID[]
)
RETURNS VOID AS $$
BEGIN
  PERFORM net.http_post(
    url := 'https://api.onesignal.com/notifications',
    headers := '{"Content-Type": "application/json", "Authorization": "Basic MzYxOTgxYzgtZWFiOC00YThhLWJlMmEtYWNmZGRiOWJkNzdk"}',
    body := json_build_object(
      'target_channel', 'push',
      'app_id', '4c477f3d-2679-457e-87b0-57808114f822',
      'include_external_user_ids', user_ids,
      'contents', json_build_object(
        'en', message
      ),
      'headings', json_build_object(
        'en', heading
      )
    )::text
  );
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;


-- Function to get admin user IDs
CREATE OR REPLACE FUNCTION get_admin_user_ids()
RETURNS UUID[] AS $$
DECLARE
  admin_ids UUID[];
BEGIN
  SELECT ARRAY_AGG(id) INTO admin_ids
  FROM public.users
  WHERE is_admin = true;
  RETURN admin_ids;
END;
$$ LANGUAGE plpgsql;

-- Trigger function to send notification when a new property is created
CREATE OR REPLACE FUNCTION notify_admins_new_property()
RETURNS TRIGGER AS $$
DECLARE
  admin_ids UUID[];
  property_info TEXT;
BEGIN
  -- Get admin user IDs
  admin_ids := get_admin_user_ids();
  
  -- Prepare property information
  property_info := format(
    'New property created: %s (ID: %s) - %s in %s. Price: $%s, Area: %s sqm',
    NEW.title,
    NEW.property_id,
    (SELECT name FROM public.properties_types WHERE id = NEW.property_type_id),
    (SELECT name FROM public.provinces WHERE id = NEW.province_id),
    NEW.price::text,
    NEW.sqm::text
  );
  
  -- Send notification to admin users
  PERFORM send_onesignal_notification(
    property_info,
    'New Property Alert',
    admin_ids
  );
  
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

drop trigger if exists new_property_notification on public.properties;
CREATE TRIGGER new_property_notification
AFTER INSERT ON public.properties
FOR EACH ROW
EXECUTE FUNCTION notify_admins_new_property();

-- Function to send notification when a property is approved or rejected
CREATE OR REPLACE FUNCTION notify_user_property_status_change()
RETURNS TRIGGER AS $$
DECLARE
  user_id UUID;
  notification_message TEXT;
  notification_title TEXT;
BEGIN
  -- Get the user ID of the property owner
  SELECT created_by INTO user_id
  FROM public.properties
  WHERE property_id = NEW.property_id;

  -- Prepare notification message and title based on the status change
  IF NEW.status = 'approved' THEN
    notification_title := 'Property Approved';
    notification_message := format('Your property "%s" (ID: %s) has been approved.', NEW.title, NEW.property_id);
  ELSIF NEW.status = 'rejected' THEN
    notification_title := 'Property Rejected';
    notification_message := format('Your property "%s" (ID: %s) has been rejected.', NEW.title, NEW.property_id);
  ELSE
    -- If the status is neither approved nor rejected, don't send a notification
    RETURN NEW;
  END IF;

  -- Send notification to the property owner
  PERFORM send_onesignal_notification(
    notification_message,
    notification_title,
    ARRAY[user_id]
  );

  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Create trigger for property status changes
DROP TRIGGER IF EXISTS property_status_change_notification ON public.properties;
CREATE TRIGGER property_status_change_notification
AFTER UPDATE OF status ON public.properties
FOR EACH ROW
WHEN (OLD.status IS DISTINCT FROM NEW.status)
EXECUTE FUNCTION notify_user_property_status_change();
