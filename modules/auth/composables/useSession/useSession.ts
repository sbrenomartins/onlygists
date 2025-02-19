export function useSession() {
  const user = useSupabaseUser();
  const services = useServices();

  const isLogged = () => {
    const hasUserLogged = Boolean(user.value);
    return hasUserLogged;
  };

  const logout = async () => {
    await services.auth.signOut();
  };

  return {
    user,
    isLogged,
    logout,
  };
}
