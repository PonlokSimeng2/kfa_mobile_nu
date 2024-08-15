create policy "Allow all 1m0cqf_0"
on "storage"."objects"
as permissive
for select
to public
using ((bucket_id = 'files'::text));


create policy "Allow all 1m0cqf_1"
on "storage"."objects"
as permissive
for update
to public
using ((bucket_id = 'files'::text));


create policy "Allow all 1m0cqf_2"
on "storage"."objects"
as permissive
for insert
to public
with check ((bucket_id = 'files'::text));


create policy "Allow all 1m0cqf_3"
on "storage"."objects"
as permissive
for delete
to public
using ((bucket_id = 'files'::text));



