

import 'package:animal_royale/modules/login/domain/usecases/authentitcate_user_use_case.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

 class LoginStore with Store {

  AuthenticateUserUseCase _authUser;

  LoginStore(this._authUser);

  final formKey = GlobalKey<FormState>();  

  @observable
  bool loading = false;

  @observable
  bool userLogged = false;


  @action
  signInUser(String user, String password) async {
    loading = true;

    await Future.delayed(Duration(seconds: 2));

    userLogged = true;
  }

}