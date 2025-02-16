CREATE TRIGGER add_user_to_profile_trigger
  AFTER INSERT ON auth.users
FOR EACH ROW EXECUTE PROCEDURE add_user_to_profile_function();
