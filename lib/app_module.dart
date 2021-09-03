
import 'package:animal_royale/core/domain/usecases/auth_user_use_case.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {

  @override
  final List<Bind> binds = [
    Bind.factory((i) => AuthUserUseCaseImpl())
  ];

  @override
  final List<ModularRoute> routes = [
    Router()
  ];
}