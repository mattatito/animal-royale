

import 'package:animal_royale/modules/login/presenter/value_notifier/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {

  final formKey = GlobalKey<FormState>();

  LoginCubit(LoginState initialState) : super(initialState);

  void signInUser(String user, String password) async {
    emit(LoginState.loading());

    await Future.delayed(Duration(seconds: 2));

    emit(LoginState.error("NÃO DEU"));
    await Future.delayed(Duration(seconds: 5));

    emit(LoginState());
  }
}