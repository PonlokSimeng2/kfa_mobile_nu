alter table public.properties add column if not exists like_count integer not null default 0;

-- Create function to update like_count
CREATE OR REPLACE FUNCTION update_property_like_count()
RETURNS TRIGGER AS $$
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
$$ LANGUAGE plpgsql;

-- Create trigger to update like_count when a like is added or removed
CREATE TRIGGER update_property_like_count_trigger
AFTER INSERT OR DELETE ON public.property_likes
FOR EACH ROW
EXECUTE FUNCTION update_property_like_count();


create or replace function public.has_liked(property_id bigint)
returns boolean as
$$
    begin
        return exists(select 1 from public.property_likes where property_likes.property_id = $1 and property_likes.user_id = auth.uid());
    end; 
$$ language plpgsql;


CREATE INDEX IF NOT EXISTS idx_property_likes_property_id_user_id
ON public.property_likes (property_id, user_id);
