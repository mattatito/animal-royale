import 'package:animal_royale/modules/login/datasource/api_datasource.dart';
import 'package:animal_royale/modules/login/domain/usecases/authentitcate_user_use_case.dart';
import 'package:animal_royale/modules/login/infra/repositories/auth_repository_impl.dart';

import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/login/login_module.dart';



class AppModule extends Module {

  @override
  final List<Bind> binds = [
    Bind.factory((i) => AuthenticationRepositoryImpl(i())),
    Bind.factory((i) => AuthenticateUserUseCaseImpl(i())),
    Bind((i) => ApiDatasource(Dio()))
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/login', module: LoginModule()),
  ];
}