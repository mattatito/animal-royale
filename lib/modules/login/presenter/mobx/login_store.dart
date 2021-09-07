

import 'package:animal_royale/modules/login/domain/usecases/authentitcate_user_use_case.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_codegen/mobx_codegen.dart';

part 'login_store.g.dart';

class LStore = LoginStore with _$LoginStore;

abstract class LoginStore with Store {

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

    print('aaa');
    await Future.delayed(Duration(seconds: 2));

    userLogged = true;
  }
}