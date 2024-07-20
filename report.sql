create or replace function public.get_admin_report( )
returns jsonb as
$$
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
$$ language plpgsql;