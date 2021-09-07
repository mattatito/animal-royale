import 'package:animal_royale/modules/login/domain/usecases/authentitcate_user_use_case.dart';
import 'package:animal_royale/modules/login/presenter/mobx/login_store.dart';
import 'package:animal_royale/modules/login/presenter/widgets/login_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../widgets/form_input_widget.dart';

class LoginScreenMobx extends StatelessWidget {
  final _userController = TextEditingController();
  final _passController = TextEditingController();

  final store = LStore(Modular.get<AuthenticateUserUseCase>());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Mobx'),
        ),
        body: _body(),
      ),
    );
  }

  Widget _body() {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(20),
        child: Form(
          key: store.formKey,
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
                onTap: (){
                  store.signInUser(_userController.text, _passController.text);
                },
                child: Observer(
                  builder: (_) {
                    return store.loading
                        ? Center(
                            child: CircularProgressIndicator(),
                          )
                        : Text(
                            'Login',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          );
                  },
                ),
              ),
              Observer(
                builder: (context){
                  return store.userLogged ? _userLoggedCard() : Container();
                },
              )
            ],
          ),
        ),
      ),
    );
  }


  Widget _userLoggedCard() => Container(
    margin: EdgeInsets.all(20),
    child: Text('Usuário logado!'),
  );
}
