

import 'package:animal_royale/modules/login/presenter/mobx/login_screen_mobox.dart';
import 'package:animal_royale/modules/login/presenter/value_notifier/login_screen_value_notifier.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginModule extends Module {
    @override
  final List<Bind> binds = [
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => LoginScreenValueNotifier()),
  ];
}