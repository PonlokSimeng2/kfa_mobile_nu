
CREATE OR REPLACE FUNCTION notify_user_auto_verbal_status_change()
RETURNS TRIGGER AS $$
DECLARE
  auto_verbal_owner_id UUID;
  notification_message TEXT;
  notification_title TEXT;
BEGIN
  -- Get the user ID of the auto verbal owner
  SELECT user_id INTO auto_verbal_owner_id
  FROM public.auto_verbals
  WHERE id = NEW.id;
  -- Prepare notification message and title based on the status change
  IF NEW.status = 'approved' THEN
    notification_title := 'Auto Verbal Approved';
    notification_message := format('Your auto verbal (ID: %s) has been approved. The minimum price has been set to %s and the maximum price to %s.', NEW.auto_verbal_id, NEW.min_value, NEW.max_value);
  ELSIF NEW.status = 'rejected' THEN
    notification_title := 'Auto Verbal Rejected';
    notification_message := format('Your auto verbal (ID: %s) has been rejected.', NEW.auto_verbal_id);
  ELSE
    -- If the status is neither approved nor rejected, don't send a notification
    RETURN NEW;
  END IF;

  -- Send notification to the auto verbal owner
  PERFORM send_onesignal_notification(
    notification_message,
    notification_title,
    ARRAY[auto_verbal_owner_id]
  );

  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Create trigger for auto verbal status changes
DROP TRIGGER IF EXISTS auto_verbal_status_change_notification ON public.auto_verbals;
CREATE TRIGGER auto_verbal_status_change_notification
AFTER UPDATE OF status ON public.auto_verbals
FOR EACH ROW
WHEN (OLD.status IS DISTINCT FROM NEW.status)
EXECUTE FUNCTION notify_user_auto_verbal_status_change();

-- Function to send notification to admin when a new auto verbal is added
CREATE OR REPLACE FUNCTION notify_admin_new_auto_verbal()
RETURNS TRIGGER AS $$
DECLARE
  admin_user_ids UUID[];
  notification_message TEXT;
  notification_title TEXT;
BEGIN
  -- Get all admin user IDs
  SELECT ARRAY_AGG(id) INTO admin_user_ids
  FROM public.users
  WHERE is_admin = true;

  -- Prepare notification message and title
  notification_title := 'New Auto Verbal Added';
  notification_message := format('A new auto verbal (ID: %s) has been added and is pending approval.', NEW.auto_verbal_id);

  -- Send notification to all admins
  PERFORM send_onesignal_notification(
    notification_message,
    notification_title,
    admin_user_ids
  );

  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Create trigger for new auto verbal notifications
DROP TRIGGER IF EXISTS new_auto_verbal_notification ON public.auto_verbals;
CREATE TRIGGER new_auto_verbal_notification
AFTER INSERT ON public.auto_verbals
FOR EACH ROW
EXECUTE FUNCTION notify_admin_new_auto_verbal();


-- Function to send notification to admin when an auto verbal is resubmitted
CREATE OR REPLACE FUNCTION notify_admin_auto_verbal_resubmitted()
RETURNS TRIGGER AS $$
DECLARE
  admin_user_ids UUID[];
  notification_message TEXT;
  notification_title TEXT;
BEGIN
  -- Only proceed if the new status is 'resubmit'
  IF NEW.status = 'resubmit' THEN
    -- Get all admin user IDs
    SELECT ARRAY_AGG(id) INTO admin_user_ids
    FROM public.users
    WHERE is_admin = true;

    -- Prepare notification message and title
    notification_title := 'Auto Verbal Resubmitted';
    notification_message := format('Auto verbal (ID: %s) has been resubmitted and requires review.', NEW.auto_verbal_id);

    -- Send notification to all admins
    PERFORM send_onesignal_notification(
      notification_message,
      notification_title,
      admin_user_ids
    );
  END IF;

  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Create trigger for auto verbal resubmission notifications
DROP TRIGGER IF EXISTS auto_verbal_resubmission_notification ON public.auto_verbals;
CREATE TRIGGER auto_verbal_resubmission_notification
AFTER UPDATE ON public.auto_verbals
FOR EACH ROW
WHEN (NEW.status = 'resubmit')
EXECUTE FUNCTION notify_admin_auto_verbal_resubmitted();
