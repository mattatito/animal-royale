import 'package:animal_royale/modules/login/presenter/widgets/login_button.dart';
import 'package:flutter/material.dart';

import '../widgets/form_input_widget.dart';

class LoginScreenMobx extends StatelessWidget {
  final _userController = TextEditingController();
  final _passController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _body(),
      ),
    );
  }

  Widget _body() {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(20),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: Text('Faça seu login 😊', style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),),
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
                onTap: () {
                  
                },
                child: Text(
                  'Login',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
