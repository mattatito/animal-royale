
class LoginState{

  final bool loading;
  final bool userLogged;
  final String error;

  LoginState({
      this.loading = false,
      this.userLogged = false,
      this.error = '',
  });

  factory LoginState.loading() => LoginState(loading: true);

  factory LoginState.userLogged() => LoginState(userLogged: true);

  factory LoginState.error(String error) => LoginState(error: error);

}