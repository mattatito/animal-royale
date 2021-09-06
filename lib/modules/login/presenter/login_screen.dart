
import 'package:animal_royale/modules/login/presenter/login_controller.dart';
import 'package:flutter/material.dart';

import 'widgets/form_input_widget.dart';

class LoginScreen extends StatelessWidget {
  
  final _userController = TextEditingController();
  final _passController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _body(),
    );
  }

  Widget _body(){
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(20),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FormInputWidget(
                controller: _userController,
                obscureText: false,
                validator: (value){},
                labelText: "Usuario",
              ),
              FormInputWidget(
                controller: _passController,
                obscureText: true,
                validator: (value){},
                labelText: "Senha",
              )
            ],
          ),
        ),
      ),
    );
  }
}
