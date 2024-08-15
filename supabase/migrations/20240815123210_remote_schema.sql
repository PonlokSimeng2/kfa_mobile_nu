CREATE TRIGGER on_auth_user_inserted AFTER INSERT ON auth.users FOR EACH ROW EXECUTE FUNCTION on_auth_user_inserted();


