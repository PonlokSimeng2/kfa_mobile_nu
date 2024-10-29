
-- Add superadmin role
alter table public.users add column role text not null check (role in ('user', 'admin', 'superAdmin')) default 'user';
update public.users set role = 'admin' where is_admin = true;
update public.users set role = 'superAdmin' where email = 'rithykfanoun@gmail.com';

-- User
alter table public.users add column managed_by_id uuid references public.users(id) on delete set null;
update public.users set managed_by_id = (select id from public.users where email = 'rithykfanoun@gmail.com') where role = 'users';

alter table public.users drop column if exists is_admin;

alter table public.users add column if not exists active boolean not null default true;