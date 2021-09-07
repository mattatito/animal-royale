
import 'package:animal_royale/modules/login/presenter/value_notifier/login_state.dart';
import 'package:flutter/material.dart';

class LoginController {
  
  ValueNotifier _state = ValueNotifier<LoginState>(LoginState());
  get state => _state;
  set state(value) => _state.value = value;

  final formKey = GlobalKey<FormState>();

  void signInUser(String email, String password) async {
    state = LoginState.loading();

    await Future.delayed(Duration(seconds: 2));

    state = LoginState.userLogged();
  }

}