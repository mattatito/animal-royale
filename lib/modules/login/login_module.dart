

import 'package:animal_royale/modules/home/home_module.dart';
import 'package:animal_royale/modules/login/presenter/value_notifier/login_screen_value_notifier.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginModule extends Module {
    @override
  final List<Bind> binds = [
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/login', child: (_, args) => LoginScreenValueNotifier()),
    ModuleRoute('/home', module: HomeModule())
  ];
}