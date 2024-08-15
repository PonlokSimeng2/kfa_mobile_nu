
SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

CREATE SCHEMA IF NOT EXISTS "public";

ALTER SCHEMA "public" OWNER TO "pg_database_owner";

COMMENT ON SCHEMA "public" IS 'standard public schema';

CREATE EXTENSION IF NOT EXISTS "pg_net" WITH SCHEMA "public";

CREATE EXTENSION IF NOT EXISTS "pgsodium" WITH SCHEMA "pgsodium";

CREATE EXTENSION IF NOT EXISTS "pg_graphql" WITH SCHEMA "graphql";

CREATE EXTENSION IF NOT EXISTS "pg_stat_statements" WITH SCHEMA "extensions";

CREATE EXTENSION IF NOT EXISTS "pgcrypto" WITH SCHEMA "extensions";

CREATE EXTENSION IF NOT EXISTS "pgjwt" WITH SCHEMA "extensions";

CREATE EXTENSION IF NOT EXISTS "supabase_vault" WITH SCHEMA "vault";

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA "extensions";

CREATE OR REPLACE FUNCTION "public"."count_properties_and_auto_verbals"("p_status_array" "text"[] DEFAULT NULL::"text"[], "p_user_id" "uuid" DEFAULT NULL::"uuid") RETURNS "json"
    LANGUAGE "plpgsql"
    AS $$
DECLARE
    property_count integer;
    auto_verbal_count integer;
BEGIN
    -- Count properties
    SELECT COUNT(*)
    INTO property_count
    FROM properties
    WHERE (p_status_array IS NULL OR status = ANY(p_status_array))
      AND (p_user_id IS NULL OR properties.user_id = p_user_id);

    -- Count auto verbals
    SELECT COUNT(*)
    INTO auto_verbal_count
    FROM auto_verbals
    WHERE (p_status_array IS NULL OR status = ANY(p_status_array))
      AND (p_user_id IS NULL OR auto_verbals.user_id = p_user_id);

    -- Return the counts as a JSON object
    RETURN json_build_object(
        'properties', property_count,
        'auto_verbals', auto_verbal_count
    );
END;
$$;

ALTER FUNCTION "public"."count_properties_and_auto_verbals"("p_status_array" "text"[], "p_user_id" "uuid") OWNER TO "postgres";

CREATE OR REPLACE FUNCTION "public"."create_vpoint_transaction_on_auto_verbal_inserted"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$begin
        insert into public.vpoint_transactions(type, user_id, vpoints) values (
            'auto_verbal',
            new.user_id,
            -1
        );
        return new;
    end;$$;

ALTER FUNCTION "public"."create_vpoint_transaction_on_auto_verbal_inserted"() OWNER TO "postgres";

CREATE OR REPLACE FUNCTION "public"."func_notifications_send"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
    begin
        -- Send notification using OneSignal
        perform send_onesignal_notification(
            new.message,
            new.title,
            ARRAY[new.user_id]
        );
        return coalesce(new, old);
    end; 
$$;

ALTER FUNCTION "public"."func_notifications_send"() OWNER TO "postgres";

CREATE OR REPLACE FUNCTION "public"."generate_auto_verbal_id"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$BEGIN
    NEW.auto_verbal_id = CONCAT(
                        'ATB',
                        TO_CHAR(CURRENT_DATE, 'YYYYMM'),
                        LPAD((COALESCE((SELECT MAX(id) FROM public.auto_verbals), 0) + 1)::TEXT, 4, '0')
                    );
    RETURN NEW;
END;$$;

ALTER FUNCTION "public"."generate_auto_verbal_id"() OWNER TO "postgres";

CREATE OR REPLACE FUNCTION "public"."generate_properties_report"() RETURNS TABLE("property_type_category_id" bigint, "category_name" "text", "sale_count" bigint, "rent_count" bigint)
    LANGUAGE "plpgsql"
    AS $$
BEGIN
    RETURN QUERY
    SELECT 
        ptc.id AS property_type_category_id,
        ptc.name AS category_name,
        COALESCE(SUM(CASE WHEN p.listing_type = 'sale' THEN 1 ELSE 0 END), 0)::bigint AS sale_count,
        COALESCE(SUM(CASE WHEN p.listing_type = 'rent' THEN 1 ELSE 0 END), 0)::bigint AS rent_count
    FROM 
        property_type_categories ptc
    LEFT JOIN 
        properties_types pt ON ptc.id = pt.category_id
    LEFT JOIN 
        properties p ON pt.id = p.property_type_id
    GROUP BY 
        ptc.id, ptc.name
    ORDER BY 
        ptc.id;
END;
$$;

ALTER FUNCTION "public"."generate_properties_report"() OWNER TO "postgres";

CREATE OR REPLACE FUNCTION "public"."generate_properties_report_json"() RETURNS "json"
    LANGUAGE "plpgsql"
    AS $$
DECLARE
    result json;
BEGIN
    SELECT json_object_agg(
        property_type_category_id,
        json_build_object(
            'sale', sale_count,
            'rent', rent_count
        )
    ) INTO result
    FROM (
        SELECT 
            ptc.id AS property_type_category_id,
            COALESCE(SUM(CASE WHEN p.listing_type = 'sale' THEN 1 ELSE 0 END), 0)::bigint AS sale_count,
            COALESCE(SUM(CASE WHEN p.listing_type = 'rent' THEN 1 ELSE 0 END), 0)::bigint AS rent_count
        FROM 
            property_type_categories ptc
        LEFT JOIN 
            properties_types pt ON ptc.id = pt.category_id
        LEFT JOIN 
            properties p ON pt.id = p.property_type_id
        GROUP BY 
            ptc.id
    ) subquery;

    RETURN result;
END;
$$;

ALTER FUNCTION "public"."generate_properties_report_json"() OWNER TO "postgres";

CREATE OR REPLACE FUNCTION "public"."generate_property_id"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$BEGIN
    NEW.property_id = CONCAT(
                        'PTY',
                        TO_CHAR(CURRENT_DATE, 'YYYYMM'),
                        LPAD((COALESCE((SELECT MAX(id) FROM public.properties), 0) + 1)::TEXT, 4, '0')
                    );
    RETURN NEW;
END;$$;

ALTER FUNCTION "public"."generate_property_id"() OWNER TO "postgres";

CREATE OR REPLACE FUNCTION "public"."generate_user_id"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$  
    begin
        if new.user_id is null then
            new.user_id = concat(
                            to_char(CURRENT_DATE, 'YYYYMM'),
                            lpad((coalesce((SELECT count(1) FROM public.users), 0) + 1)::text, 4, '0')
                            );
        end if;
        return new;
    end; 
$$;

ALTER FUNCTION "public"."generate_user_id"() OWNER TO "postgres";

CREATE OR REPLACE FUNCTION "public"."generate_vpoint_transaction_id"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
    begin
        if new.transaction_id is null then
            new.transaction_id = substring(md5(gen_random_uuid()::text) FROM 1 FOR 8);
        end if;
        return new;
    end; 
$$;

ALTER FUNCTION "public"."generate_vpoint_transaction_id"() OWNER TO "postgres";

CREATE OR REPLACE FUNCTION "public"."get_admin_report"() RETURNS "jsonb"
    LANGUAGE "plpgsql"
    AS $$
    begin
        return jsonb_build_object(
            'total_sale', (select count(1) from properties where listing_type = 'sale'),
            'total_rent', (select count(1) from properties where listing_type = 'rent'),
            'total_user', (select count(1) from public.users where is_admin = false),
            'total_property', (select count(1) from properties),
            'total_approved_property', (select count(1) from properties where status = 'approved'),
            'total_rejected_property', (select count(1) from properties where status = 'rejected'),
            'total_pending_property', (select count(1) from properties where status = 'pending')
        );
    end; 
$$;

ALTER FUNCTION "public"."get_admin_report"() OWNER TO "postgres";

CREATE OR REPLACE FUNCTION "public"."get_admin_user_ids"() RETURNS "uuid"[]
    LANGUAGE "plpgsql"
    AS $$
DECLARE
  admin_ids UUID[];
BEGIN
  SELECT ARRAY_AGG(id) INTO admin_ids
  FROM public.users
  WHERE is_admin = true;
  RETURN admin_ids;
END;
$$;

ALTER FUNCTION "public"."get_admin_user_ids"() OWNER TO "postgres";

CREATE OR REPLACE FUNCTION "public"."has_liked"("property_id" bigint) RETURNS boolean
    LANGUAGE "plpgsql"
    AS $_$
    begin
        return exists(select 1 from public.property_likes where property_likes.property_id = $1 and property_likes.user_id = auth.uid());
    end; 
$_$;

ALTER FUNCTION "public"."has_liked"("property_id" bigint) OWNER TO "postgres";

CREATE OR REPLACE FUNCTION "public"."increment_property_view_count"("property_id" bigint) RETURNS "void"
    LANGUAGE "plpgsql"
    AS $_$
    begin
        update public.properties
        set view_count = view_count + 1
        where id = $1;
    end; 
$_$;

ALTER FUNCTION "public"."increment_property_view_count"("property_id" bigint) OWNER TO "postgres";

CREATE OR REPLACE FUNCTION "public"."notify_admin_auto_verbal_resubmitted"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
DECLARE
  admin_id uuid;
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

    -- Insert notification record for each admin
    FOR admin_id IN SELECT unnest(admin_user_ids) LOOP
      INSERT INTO public.notifications (title, message, user_id)
      VALUES (notification_title, notification_message, admin_id);
    END LOOP;
  END IF;

  RETURN NEW;
END;
$$;

ALTER FUNCTION "public"."notify_admin_auto_verbal_resubmitted"() OWNER TO "postgres";

CREATE OR REPLACE FUNCTION "public"."notify_admin_new_auto_verbal"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
DECLARE
  admin_id uuid;
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

  -- Insert notification record for each admin
  FOR admin_id IN SELECT unnest(admin_user_ids) LOOP
    INSERT INTO public.notifications (title, message, user_id)
    VALUES (notification_title, notification_message, admin_id);
  END LOOP;

  RETURN NEW;
END;
$$;

ALTER FUNCTION "public"."notify_admin_new_auto_verbal"() OWNER TO "postgres";

CREATE OR REPLACE FUNCTION "public"."notify_admins_new_property"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $_$

DECLARE
  admin_id uuid;
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
  
  -- Insert notification record for each admin
  FOR admin_id IN SELECT unnest(admin_ids) LOOP
    INSERT INTO public.notifications (title, message, user_id)
    VALUES ('New Property Alert', property_info, admin_id);
  END LOOP;
  
  RETURN NEW;
END;
$_$;

ALTER FUNCTION "public"."notify_admins_new_property"() OWNER TO "postgres";

CREATE OR REPLACE FUNCTION "public"."notify_user_auto_verbal_status_change"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
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
$$;

ALTER FUNCTION "public"."notify_user_auto_verbal_status_change"() OWNER TO "postgres";

CREATE OR REPLACE FUNCTION "public"."notify_user_property_status_change"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$DECLARE
  user_id UUID;
  notification_message TEXT;
  notification_title TEXT;
BEGIN
  -- Get the user ID of the property owner
  SELECT properties.user_id INTO user_id
  FROM public.properties
  WHERE property_id = NEW.property_id;

  -- Prepare notification message and title based on the status change
  IF NEW.status = 'approved' or NEW.status = 'resubmit' THEN
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
END;$$;

ALTER FUNCTION "public"."notify_user_property_status_change"() OWNER TO "postgres";

CREATE OR REPLACE FUNCTION "public"."on_auth_user_inserted"() RETURNS "trigger"
    LANGUAGE "plpgsql" SECURITY DEFINER
    AS $$
    begin
        insert into public.users(id, photo, first_name, last_name, phone, email) values (
            new.id, 
            new.raw_user_meta_data->>'photo',
            new.raw_user_meta_data->>'first_name',
            new.raw_user_meta_data->>'last_name',
            new.raw_user_meta_data->>'phone',
            new.email
        );
        return new;
    end; 
$$;

ALTER FUNCTION "public"."on_auth_user_inserted"() OWNER TO "postgres";

CREATE OR REPLACE FUNCTION "public"."send_onesignal_notification"("message" "text", "heading" "text", "user_ids" "uuid"[]) RETURNS "void"
    LANGUAGE "plpgsql" SECURITY DEFINER
    AS $$
DECLARE
    _request_id bigint;
    _url constant text := 'https://api.onesignal.com/notifications';
    _onesignal_app_id constant text := '4c477f3d-2679-457e-87b0-57808114f822';
    _onesignal_rest_api_key constant text := 'MzYxOTgxYzgtZWFiOC00YThhLWJlMmEtYWNmZGRiOWJkNzdk';
    _headers jsonb := jsonb_build_object(
        'Content-Type', 'application/json',
        'Authorization', CONCAT('Basic ', _onesignal_rest_api_key)
    );
    timeout_ms constant integer := 2000;
BEGIN
    SELECT http_post INTO _request_id
    FROM net.http_post(
        _url,
        jsonb_build_object(
            'app_id', _onesignal_app_id,
            'include_external_user_ids', user_ids,
            'contents', jsonb_build_object('en', message),
            'headings', jsonb_build_object('en', heading),
            'target_channel', 'push'
        ),
        NULL,
        _headers,
        timeout_ms
    );
END;
$$;

ALTER FUNCTION "public"."send_onesignal_notification"("message" "text", "heading" "text", "user_ids" "uuid"[]) OWNER TO "postgres";

CREATE OR REPLACE FUNCTION "public"."t_generate_user_id"() RETURNS "text"
    LANGUAGE "plpgsql"
    AS $$  
BEGIN
    RETURN concat(
        to_char(CURRENT_DATE, 'YYYYMM'),
        lpad((coalesce((SELECT count(1) FROM public.users), 0) + 1)::text, 4, '0')
    );
END; 
$$;

ALTER FUNCTION "public"."t_generate_user_id"() OWNER TO "postgres";

CREATE OR REPLACE FUNCTION "public"."update_property_like_count"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
BEGIN
    IF TG_OP = 'INSERT' THEN
        UPDATE public.properties
        SET like_count = like_count + 1
        WHERE id = NEW.property_id;
    ELSIF TG_OP = 'DELETE' THEN
        UPDATE public.properties
        SET like_count = like_count - 1
        WHERE id = OLD.property_id;
    END IF;
    RETURN NULL;
END;
$$;

ALTER FUNCTION "public"."update_property_like_count"() OWNER TO "postgres";

CREATE OR REPLACE FUNCTION "public"."update_vpoints"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$ 
    declare
        _vpoints integer;
    begin
        update public.users set vpoints = vpoints + new.vpoints where id = new.user_id returning vpoints into _vpoints;
        
        if _vpoints < 0 then
            raise exception 'Insufficient vpoints';
        end if;

        return new;
    end; 
$$;

ALTER FUNCTION "public"."update_vpoints"() OWNER TO "postgres";

SET default_tablespace = '';

SET default_table_access_method = "heap";

CREATE TABLE IF NOT EXISTS "public"."auto_verbals" (
    "id" bigint NOT NULL,
    "auto_verbal_id" "text" NOT NULL,
    "property_type_id" bigint NOT NULL,
    "bank_id" bigint,
    "latitude" numeric NOT NULL,
    "longitude" numeric NOT NULL,
    "user_id" "uuid" NOT NULL,
    "owner_name" "text" NOT NULL,
    "owner_phone" "text" NOT NULL,
    "bank_officer_name" "text",
    "bank_officer_phone" "text",
    "address" "text",
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "approved_at" timestamp with time zone,
    "approved_by" "uuid",
    "reject_at" timestamp with time zone,
    "status" "text" DEFAULT 'pending'::"text" NOT NULL,
    "reject_reason" "text",
    "province_id" bigint,
    "min_value" numeric,
    "max_value" numeric,
    "min_value_sqm" numeric,
    "max_value_sqm" numeric,
    "landwidth" numeric,
    "landlength" numeric,
    "area" numeric,
    "buildinglength" numeric,
    "buildingwidth" numeric,
    "bankbranch" "text",
    "road_id" bigint,
    "bed" numeric,
    "bath" numeric,
    "livingroom" numeric,
    "floor" numeric,
    "images" "text"[]
);

ALTER TABLE "public"."auto_verbals" OWNER TO "postgres";

ALTER TABLE "public"."auto_verbals" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."auto_verbals_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);

CREATE TABLE IF NOT EXISTS "public"."banks" (
    "id" bigint NOT NULL,
    "name" "text" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "bank_branch" "text"
);

ALTER TABLE "public"."banks" OWNER TO "postgres";

ALTER TABLE "public"."banks" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."banks_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);

CREATE TABLE IF NOT EXISTS "public"."favorites" (
    "id" bigint NOT NULL,
    "user_id" "uuid" NOT NULL,
    "property_id" bigint NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL
);

ALTER TABLE "public"."favorites" OWNER TO "postgres";

ALTER TABLE "public"."favorites" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."favorites_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);

CREATE TABLE IF NOT EXISTS "public"."notifications" (
    "id" bigint NOT NULL,
    "title" "text" NOT NULL,
    "message" "text" NOT NULL,
    "user_id" "uuid" NOT NULL
);

ALTER TABLE "public"."notifications" OWNER TO "postgres";

ALTER TABLE "public"."notifications" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."notifications_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);

CREATE TABLE IF NOT EXISTS "public"."properties" (
    "id" bigint NOT NULL,
    "user_id" "uuid" NOT NULL,
    "property_id" "text" NOT NULL,
    "listing_type" "text" NOT NULL,
    "images" "text"[] NOT NULL,
    "title" "text" NOT NULL,
    "description" "text" NOT NULL,
    "latitude" numeric NOT NULL,
    "longitude" numeric NOT NULL,
    "property_type_id" bigint NOT NULL,
    "province_id" bigint NOT NULL,
    "price" numeric NOT NULL,
    "sqm" numeric NOT NULL,
    "bedrooms" integer,
    "bathrooms" integer,
    "floors" integer,
    "parking" integer,
    "price_per_sqm" numeric NOT NULL,
    "living_rooms" integer,
    "land_length" numeric NOT NULL,
    "land_width" numeric NOT NULL,
    "house_length" numeric,
    "house_width" numeric,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "building_length" numeric DEFAULT 0 NOT NULL,
    "building_width" numeric DEFAULT 0 NOT NULL,
    "approved_at" timestamp with time zone,
    "approved_by" "uuid",
    "rejected_at" timestamp with time zone,
    "status" "text" DEFAULT 'pending'::"text",
    "reject_reason" "text",
    "view_count" integer DEFAULT 0 NOT NULL,
    "auto_verbal_added" boolean DEFAULT false NOT NULL,
    "like_count" integer DEFAULT 0 NOT NULL,
    "hidden_from_home_page" boolean DEFAULT false NOT NULL,
    CONSTRAINT "properties_listing_type_check" CHECK (("listing_type" = ANY (ARRAY['sale'::"text", 'rent'::"text"])))
);

ALTER TABLE "public"."properties" OWNER TO "postgres";

ALTER TABLE "public"."properties" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."properties_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);

CREATE TABLE IF NOT EXISTS "public"."properties_types" (
    "id" bigint NOT NULL,
    "name" "text" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "category_id" bigint
);

ALTER TABLE "public"."properties_types" OWNER TO "postgres";

ALTER TABLE "public"."properties_types" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."properties_types_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);

CREATE TABLE IF NOT EXISTS "public"."property_comments" (
    "id" bigint NOT NULL,
    "property_id" bigint NOT NULL,
    "user_id" "uuid" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "content" "text" NOT NULL
);

ALTER TABLE "public"."property_comments" OWNER TO "postgres";

ALTER TABLE "public"."property_comments" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."property_comments_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);

CREATE TABLE IF NOT EXISTS "public"."property_likes" (
    "id" bigint NOT NULL,
    "property_id" bigint NOT NULL,
    "user_id" "uuid" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL
);

ALTER TABLE "public"."property_likes" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."property_type_categories" (
    "id" bigint NOT NULL,
    "name" "text" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL
);

ALTER TABLE "public"."property_type_categories" OWNER TO "postgres";

ALTER TABLE "public"."property_type_categories" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."property_type_categories_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);

ALTER TABLE "public"."property_likes" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."property_views_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);

CREATE TABLE IF NOT EXISTS "public"."provinces" (
    "id" bigint NOT NULL,
    "name" "text" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL
);

ALTER TABLE "public"."provinces" OWNER TO "postgres";

ALTER TABLE "public"."provinces" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."provinces_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);

CREATE TABLE IF NOT EXISTS "public"."roads" (
    "id" bigint NOT NULL,
    "name" "text",
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL
);

ALTER TABLE "public"."roads" OWNER TO "postgres";

ALTER TABLE "public"."roads" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."roads_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);

CREATE TABLE IF NOT EXISTS "public"."users" (
    "id" "uuid" NOT NULL,
    "user_id" "text" NOT NULL,
    "photo" "text",
    "first_name" "text" NOT NULL,
    "last_name" "text" NOT NULL,
    "email" "text" NOT NULL,
    "phone" "text" NOT NULL,
    "vpoints" integer DEFAULT 0 NOT NULL,
    "joined_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "is_admin" boolean DEFAULT false
);

ALTER TABLE "public"."users" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."vpoint_transactions" (
    "id" bigint NOT NULL,
    "transaction_id" "text" NOT NULL,
    "type" "text" NOT NULL,
    "user_id" "uuid" NOT NULL,
    "vpoints" integer NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL
);

ALTER TABLE "public"."vpoint_transactions" OWNER TO "postgres";

ALTER TABLE "public"."vpoint_transactions" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."vpoint_transactions_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);

ALTER TABLE ONLY "public"."auto_verbals"
    ADD CONSTRAINT "auto_verbals_auto_verbal_id_key" UNIQUE ("auto_verbal_id");

ALTER TABLE ONLY "public"."auto_verbals"
    ADD CONSTRAINT "auto_verbals_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."banks"
    ADD CONSTRAINT "banks_name_key" UNIQUE ("name");

ALTER TABLE ONLY "public"."banks"
    ADD CONSTRAINT "banks_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."favorites"
    ADD CONSTRAINT "favorites_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."favorites"
    ADD CONSTRAINT "favorites_user_id_property_id_key" UNIQUE ("user_id", "property_id");

ALTER TABLE ONLY "public"."notifications"
    ADD CONSTRAINT "notifications_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."properties"
    ADD CONSTRAINT "properties_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."properties"
    ADD CONSTRAINT "properties_property_id_key" UNIQUE ("property_id");

ALTER TABLE ONLY "public"."properties_types"
    ADD CONSTRAINT "properties_types_name_key" UNIQUE ("name");

ALTER TABLE ONLY "public"."properties_types"
    ADD CONSTRAINT "properties_types_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."property_comments"
    ADD CONSTRAINT "property_comments_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."property_type_categories"
    ADD CONSTRAINT "property_type_categories_name_key" UNIQUE ("name");

ALTER TABLE ONLY "public"."property_type_categories"
    ADD CONSTRAINT "property_type_categories_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."property_likes"
    ADD CONSTRAINT "property_views_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."property_likes"
    ADD CONSTRAINT "property_views_property_id_user_id_key" UNIQUE ("property_id", "user_id");

ALTER TABLE ONLY "public"."provinces"
    ADD CONSTRAINT "provinces_name_key" UNIQUE ("name");

ALTER TABLE ONLY "public"."provinces"
    ADD CONSTRAINT "provinces_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."roads"
    ADD CONSTRAINT "roads_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."users"
    ADD CONSTRAINT "users_email_key" UNIQUE ("email");

ALTER TABLE ONLY "public"."users"
    ADD CONSTRAINT "users_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."users"
    ADD CONSTRAINT "users_user_id_key" UNIQUE ("user_id");

ALTER TABLE ONLY "public"."vpoint_transactions"
    ADD CONSTRAINT "vpoint_transactions_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."vpoint_transactions"
    ADD CONSTRAINT "vpoint_transactions_transaction_id_key" UNIQUE ("transaction_id");

CREATE INDEX "idx_property_likes_property_id_user_id" ON "public"."property_likes" USING "btree" ("property_id", "user_id");

CREATE OR REPLACE TRIGGER "auto_generate_auto_verbal_id" BEFORE INSERT ON "public"."auto_verbals" FOR EACH ROW EXECUTE FUNCTION "public"."generate_auto_verbal_id"();

CREATE OR REPLACE TRIGGER "auto_verbal_resubmission_notification" AFTER UPDATE ON "public"."auto_verbals" FOR EACH ROW WHEN (("new"."status" = 'resubmit'::"text")) EXECUTE FUNCTION "public"."notify_admin_auto_verbal_resubmitted"();

CREATE OR REPLACE TRIGGER "auto_verbal_status_change_notification" AFTER UPDATE OF "status" ON "public"."auto_verbals" FOR EACH ROW WHEN (("old"."status" IS DISTINCT FROM "new"."status")) EXECUTE FUNCTION "public"."notify_user_auto_verbal_status_change"();

CREATE OR REPLACE TRIGGER "create_vpoint_transaction_on_auto_verbal_inserted" AFTER INSERT ON "public"."auto_verbals" FOR EACH ROW EXECUTE FUNCTION "public"."create_vpoint_transaction_on_auto_verbal_inserted"();

CREATE OR REPLACE TRIGGER "generate_user_id" BEFORE INSERT ON "public"."users" FOR EACH ROW EXECUTE FUNCTION "public"."generate_user_id"();

CREATE OR REPLACE TRIGGER "generate_vpoint_transaction_id" BEFORE INSERT ON "public"."vpoint_transactions" FOR EACH ROW EXECUTE FUNCTION "public"."generate_vpoint_transaction_id"();

CREATE OR REPLACE TRIGGER "new_auto_verbal_notification" AFTER INSERT ON "public"."auto_verbals" FOR EACH ROW EXECUTE FUNCTION "public"."notify_admin_new_auto_verbal"();

CREATE OR REPLACE TRIGGER "new_property_notification" AFTER INSERT ON "public"."properties" FOR EACH ROW EXECUTE FUNCTION "public"."notify_admins_new_property"();

CREATE OR REPLACE TRIGGER "property_status_change_notification" AFTER UPDATE OF "status" ON "public"."properties" FOR EACH ROW WHEN (("old"."status" IS DISTINCT FROM "new"."status")) EXECUTE FUNCTION "public"."notify_user_property_status_change"();

CREATE OR REPLACE TRIGGER "tr_generate_property_id" BEFORE INSERT ON "public"."properties" FOR EACH ROW EXECUTE FUNCTION "public"."generate_property_id"();

CREATE OR REPLACE TRIGGER "tr_notifications_send" AFTER INSERT ON "public"."notifications" FOR EACH ROW EXECUTE FUNCTION "public"."func_notifications_send"();

CREATE OR REPLACE TRIGGER "update_property_like_count_trigger" AFTER INSERT OR DELETE ON "public"."property_likes" FOR EACH ROW EXECUTE FUNCTION "public"."update_property_like_count"();

CREATE OR REPLACE TRIGGER "update_vpoints" AFTER INSERT ON "public"."vpoint_transactions" FOR EACH ROW EXECUTE FUNCTION "public"."update_vpoints"();

ALTER TABLE ONLY "public"."auto_verbals"
    ADD CONSTRAINT "auto_verbals_approved_by_fkey" FOREIGN KEY ("approved_by") REFERENCES "public"."users"("id") ON DELETE SET NULL;

ALTER TABLE ONLY "public"."auto_verbals"
    ADD CONSTRAINT "auto_verbals_bank_id_fkey" FOREIGN KEY ("bank_id") REFERENCES "public"."banks"("id") ON DELETE SET NULL;

ALTER TABLE ONLY "public"."auto_verbals"
    ADD CONSTRAINT "auto_verbals_property_type_id_fkey" FOREIGN KEY ("property_type_id") REFERENCES "public"."properties_types"("id") ON DELETE CASCADE;

ALTER TABLE ONLY "public"."auto_verbals"
    ADD CONSTRAINT "auto_verbals_province_id_fkey" FOREIGN KEY ("province_id") REFERENCES "public"."provinces"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."auto_verbals"
    ADD CONSTRAINT "auto_verbals_road_id_fkey" FOREIGN KEY ("road_id") REFERENCES "public"."roads"("id") ON UPDATE CASCADE ON DELETE SET NULL;

ALTER TABLE ONLY "public"."auto_verbals"
    ADD CONSTRAINT "auto_verbals_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON DELETE CASCADE;

ALTER TABLE ONLY "public"."auto_verbals"
    ADD CONSTRAINT "auto_verbals_user_id_fkey1" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."favorites"
    ADD CONSTRAINT "favorites_property_id_fkey" FOREIGN KEY ("property_id") REFERENCES "public"."properties"("id") ON DELETE CASCADE;

ALTER TABLE ONLY "public"."favorites"
    ADD CONSTRAINT "favorites_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON DELETE CASCADE;

ALTER TABLE ONLY "public"."properties"
    ADD CONSTRAINT "properties_approved_by_fkey" FOREIGN KEY ("approved_by") REFERENCES "public"."users"("id") ON DELETE SET NULL;

ALTER TABLE ONLY "public"."properties"
    ADD CONSTRAINT "properties_property_type_id_fkey" FOREIGN KEY ("property_type_id") REFERENCES "public"."properties_types"("id") ON DELETE CASCADE;

ALTER TABLE ONLY "public"."properties"
    ADD CONSTRAINT "properties_province_id_fkey" FOREIGN KEY ("province_id") REFERENCES "public"."provinces"("id") ON DELETE CASCADE;

ALTER TABLE ONLY "public"."properties_types"
    ADD CONSTRAINT "properties_types_category_id_fkey" FOREIGN KEY ("category_id") REFERENCES "public"."property_type_categories"("id") ON DELETE SET NULL;

ALTER TABLE ONLY "public"."properties"
    ADD CONSTRAINT "properties_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON DELETE CASCADE;

ALTER TABLE ONLY "public"."property_comments"
    ADD CONSTRAINT "property_comments_property_id_fkey" FOREIGN KEY ("property_id") REFERENCES "public"."properties"("id") ON DELETE CASCADE;

ALTER TABLE ONLY "public"."property_comments"
    ADD CONSTRAINT "property_comments_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON DELETE CASCADE;

ALTER TABLE ONLY "public"."property_likes"
    ADD CONSTRAINT "property_views_property_id_fkey" FOREIGN KEY ("property_id") REFERENCES "public"."properties"("id") ON DELETE CASCADE;

ALTER TABLE ONLY "public"."property_likes"
    ADD CONSTRAINT "property_views_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON DELETE CASCADE;

ALTER TABLE ONLY "public"."vpoint_transactions"
    ADD CONSTRAINT "vpoint_transactions_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON DELETE CASCADE;

GRANT USAGE ON SCHEMA "public" TO "postgres";
GRANT USAGE ON SCHEMA "public" TO "anon";
GRANT USAGE ON SCHEMA "public" TO "authenticated";
GRANT USAGE ON SCHEMA "public" TO "service_role";

GRANT ALL ON FUNCTION "public"."count_properties_and_auto_verbals"("p_status_array" "text"[], "p_user_id" "uuid") TO "anon";
GRANT ALL ON FUNCTION "public"."count_properties_and_auto_verbals"("p_status_array" "text"[], "p_user_id" "uuid") TO "authenticated";
GRANT ALL ON FUNCTION "public"."count_properties_and_auto_verbals"("p_status_array" "text"[], "p_user_id" "uuid") TO "service_role";

GRANT ALL ON FUNCTION "public"."create_vpoint_transaction_on_auto_verbal_inserted"() TO "anon";
GRANT ALL ON FUNCTION "public"."create_vpoint_transaction_on_auto_verbal_inserted"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."create_vpoint_transaction_on_auto_verbal_inserted"() TO "service_role";

GRANT ALL ON FUNCTION "public"."func_notifications_send"() TO "anon";
GRANT ALL ON FUNCTION "public"."func_notifications_send"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."func_notifications_send"() TO "service_role";

GRANT ALL ON FUNCTION "public"."generate_auto_verbal_id"() TO "anon";
GRANT ALL ON FUNCTION "public"."generate_auto_verbal_id"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."generate_auto_verbal_id"() TO "service_role";

GRANT ALL ON FUNCTION "public"."generate_properties_report"() TO "anon";
GRANT ALL ON FUNCTION "public"."generate_properties_report"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."generate_properties_report"() TO "service_role";

GRANT ALL ON FUNCTION "public"."generate_properties_report_json"() TO "anon";
GRANT ALL ON FUNCTION "public"."generate_properties_report_json"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."generate_properties_report_json"() TO "service_role";

GRANT ALL ON FUNCTION "public"."generate_property_id"() TO "anon";
GRANT ALL ON FUNCTION "public"."generate_property_id"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."generate_property_id"() TO "service_role";

GRANT ALL ON FUNCTION "public"."generate_user_id"() TO "anon";
GRANT ALL ON FUNCTION "public"."generate_user_id"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."generate_user_id"() TO "service_role";

GRANT ALL ON FUNCTION "public"."generate_vpoint_transaction_id"() TO "anon";
GRANT ALL ON FUNCTION "public"."generate_vpoint_transaction_id"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."generate_vpoint_transaction_id"() TO "service_role";

GRANT ALL ON FUNCTION "public"."get_admin_report"() TO "anon";
GRANT ALL ON FUNCTION "public"."get_admin_report"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."get_admin_report"() TO "service_role";

GRANT ALL ON FUNCTION "public"."get_admin_user_ids"() TO "anon";
GRANT ALL ON FUNCTION "public"."get_admin_user_ids"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."get_admin_user_ids"() TO "service_role";

GRANT ALL ON FUNCTION "public"."has_liked"("property_id" bigint) TO "anon";
GRANT ALL ON FUNCTION "public"."has_liked"("property_id" bigint) TO "authenticated";
GRANT ALL ON FUNCTION "public"."has_liked"("property_id" bigint) TO "service_role";

GRANT ALL ON FUNCTION "public"."increment_property_view_count"("property_id" bigint) TO "anon";
GRANT ALL ON FUNCTION "public"."increment_property_view_count"("property_id" bigint) TO "authenticated";
GRANT ALL ON FUNCTION "public"."increment_property_view_count"("property_id" bigint) TO "service_role";

GRANT ALL ON FUNCTION "public"."notify_admin_auto_verbal_resubmitted"() TO "anon";
GRANT ALL ON FUNCTION "public"."notify_admin_auto_verbal_resubmitted"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."notify_admin_auto_verbal_resubmitted"() TO "service_role";

GRANT ALL ON FUNCTION "public"."notify_admin_new_auto_verbal"() TO "anon";
GRANT ALL ON FUNCTION "public"."notify_admin_new_auto_verbal"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."notify_admin_new_auto_verbal"() TO "service_role";

GRANT ALL ON FUNCTION "public"."notify_admins_new_property"() TO "anon";
GRANT ALL ON FUNCTION "public"."notify_admins_new_property"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."notify_admins_new_property"() TO "service_role";

GRANT ALL ON FUNCTION "public"."notify_user_auto_verbal_status_change"() TO "anon";
GRANT ALL ON FUNCTION "public"."notify_user_auto_verbal_status_change"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."notify_user_auto_verbal_status_change"() TO "service_role";

GRANT ALL ON FUNCTION "public"."notify_user_property_status_change"() TO "anon";
GRANT ALL ON FUNCTION "public"."notify_user_property_status_change"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."notify_user_property_status_change"() TO "service_role";

GRANT ALL ON FUNCTION "public"."on_auth_user_inserted"() TO "anon";
GRANT ALL ON FUNCTION "public"."on_auth_user_inserted"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."on_auth_user_inserted"() TO "service_role";

GRANT ALL ON FUNCTION "public"."send_onesignal_notification"("message" "text", "heading" "text", "user_ids" "uuid"[]) TO "anon";
GRANT ALL ON FUNCTION "public"."send_onesignal_notification"("message" "text", "heading" "text", "user_ids" "uuid"[]) TO "authenticated";
GRANT ALL ON FUNCTION "public"."send_onesignal_notification"("message" "text", "heading" "text", "user_ids" "uuid"[]) TO "service_role";

GRANT ALL ON FUNCTION "public"."t_generate_user_id"() TO "anon";
GRANT ALL ON FUNCTION "public"."t_generate_user_id"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."t_generate_user_id"() TO "service_role";

GRANT ALL ON FUNCTION "public"."update_property_like_count"() TO "anon";
GRANT ALL ON FUNCTION "public"."update_property_like_count"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."update_property_like_count"() TO "service_role";

GRANT ALL ON FUNCTION "public"."update_vpoints"() TO "anon";
GRANT ALL ON FUNCTION "public"."update_vpoints"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."update_vpoints"() TO "service_role";

GRANT ALL ON TABLE "public"."auto_verbals" TO "anon";
GRANT ALL ON TABLE "public"."auto_verbals" TO "authenticated";
GRANT ALL ON TABLE "public"."auto_verbals" TO "service_role";

GRANT ALL ON SEQUENCE "public"."auto_verbals_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."auto_verbals_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."auto_verbals_id_seq" TO "service_role";

GRANT ALL ON TABLE "public"."banks" TO "anon";
GRANT ALL ON TABLE "public"."banks" TO "authenticated";
GRANT ALL ON TABLE "public"."banks" TO "service_role";

GRANT ALL ON SEQUENCE "public"."banks_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."banks_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."banks_id_seq" TO "service_role";

GRANT ALL ON TABLE "public"."favorites" TO "anon";
GRANT ALL ON TABLE "public"."favorites" TO "authenticated";
GRANT ALL ON TABLE "public"."favorites" TO "service_role";

GRANT ALL ON SEQUENCE "public"."favorites_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."favorites_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."favorites_id_seq" TO "service_role";

GRANT ALL ON TABLE "public"."notifications" TO "anon";
GRANT ALL ON TABLE "public"."notifications" TO "authenticated";
GRANT ALL ON TABLE "public"."notifications" TO "service_role";

GRANT ALL ON SEQUENCE "public"."notifications_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."notifications_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."notifications_id_seq" TO "service_role";

GRANT ALL ON TABLE "public"."properties" TO "anon";
GRANT ALL ON TABLE "public"."properties" TO "authenticated";
GRANT ALL ON TABLE "public"."properties" TO "service_role";

GRANT ALL ON SEQUENCE "public"."properties_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."properties_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."properties_id_seq" TO "service_role";

GRANT ALL ON TABLE "public"."properties_types" TO "anon";
GRANT ALL ON TABLE "public"."properties_types" TO "authenticated";
GRANT ALL ON TABLE "public"."properties_types" TO "service_role";

GRANT ALL ON SEQUENCE "public"."properties_types_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."properties_types_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."properties_types_id_seq" TO "service_role";

GRANT ALL ON TABLE "public"."property_comments" TO "anon";
GRANT ALL ON TABLE "public"."property_comments" TO "authenticated";
GRANT ALL ON TABLE "public"."property_comments" TO "service_role";

GRANT ALL ON SEQUENCE "public"."property_comments_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."property_comments_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."property_comments_id_seq" TO "service_role";

GRANT ALL ON TABLE "public"."property_likes" TO "anon";
GRANT ALL ON TABLE "public"."property_likes" TO "authenticated";
GRANT ALL ON TABLE "public"."property_likes" TO "service_role";

GRANT ALL ON TABLE "public"."property_type_categories" TO "anon";
GRANT ALL ON TABLE "public"."property_type_categories" TO "authenticated";
GRANT ALL ON TABLE "public"."property_type_categories" TO "service_role";

GRANT ALL ON SEQUENCE "public"."property_type_categories_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."property_type_categories_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."property_type_categories_id_seq" TO "service_role";

GRANT ALL ON SEQUENCE "public"."property_views_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."property_views_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."property_views_id_seq" TO "service_role";

GRANT ALL ON TABLE "public"."provinces" TO "anon";
GRANT ALL ON TABLE "public"."provinces" TO "authenticated";
GRANT ALL ON TABLE "public"."provinces" TO "service_role";

GRANT ALL ON SEQUENCE "public"."provinces_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."provinces_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."provinces_id_seq" TO "service_role";

GRANT ALL ON TABLE "public"."roads" TO "anon";
GRANT ALL ON TABLE "public"."roads" TO "authenticated";
GRANT ALL ON TABLE "public"."roads" TO "service_role";

GRANT ALL ON SEQUENCE "public"."roads_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."roads_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."roads_id_seq" TO "service_role";

GRANT ALL ON TABLE "public"."users" TO "anon";
GRANT ALL ON TABLE "public"."users" TO "authenticated";
GRANT ALL ON TABLE "public"."users" TO "service_role";

GRANT ALL ON TABLE "public"."vpoint_transactions" TO "anon";
GRANT ALL ON TABLE "public"."vpoint_transactions" TO "authenticated";
GRANT ALL ON TABLE "public"."vpoint_transactions" TO "service_role";

GRANT ALL ON SEQUENCE "public"."vpoint_transactions_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."vpoint_transactions_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."vpoint_transactions_id_seq" TO "service_role";

ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "service_role";

ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "service_role";

ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "service_role";

RESET ALL;
