import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../core/domain/usecases/authentitcate_user_use_case.dart';
import '../core/external/datasource/api_datasource.dart';
import '../core/infra/repositories/auth_repository_impl.dart';
import 'core/presenter/login_screen.dart';


class AppModule extends Module {

  @override
  final List<Bind> binds = [
    Bind.factory((i) => AuthenticationRepositoryImpl(i())),
    Bind.factory((i) => AuthenticateUserUseCaseImpl(i())),
    Bind((i) => ApiDatasource(Dio()))
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => LoginScreen()),
  ];
}