import 'package:animal_royale/modules/login/presenter/bloc/login_bloc.dart';
import 'package:animal_royale/modules/login/presenter/value_notifier/login_state.dart';
import 'package:animal_royale/modules/login/presenter/widgets/login_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/form_input_widget.dart';

class LoginScreenBloc extends StatelessWidget {
  final _userController = TextEditingController();
  final _passController = TextEditingController();

  final controller = LoginCubit(LoginState());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Value Bloc'),
        ),
        body: _body(context),
      ),
    );
  }

  Widget _body(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(20),
        child: Form(
          key: controller.formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: Text(
                  'Faça seu login 😊',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              FormInputWidget(
                controller: _userController,
                obscureText: false,
                validator: (value) {},
                labelText: "Usuario",
              ),
              FormInputWidget(
                controller: _passController,
                obscureText: true,
                validator: (value) {},
                labelText: "Senha",
              ),
              SizedBox(
                height: 20,
              ),
              LoginButton(
                onTap: () => context.read<LoginCubit>().signInUser(_userController.text, _passController.text),
                child: BlocBuilder<LoginCubit, LoginState>(builder: (context, state){
                  return state.loading ? Center(child: CircularProgressIndicator(),) : Text(
                  'Login',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                );
                }),),
            ],
          ),
        ),
      ),
    );
  }
}
