import 'package:animal_royale/modules/login/domain/entity/result_authentication.dart';
import 'package:animal_royale/modules/login/domain/repositories/auth_repository.dart';
import 'package:animal_royale/modules/login/infra/datasources/authenticate_user.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository{

  final AuthenticateUserDatasource authenticateUserDatasource;

  AuthenticationRepositoryImpl(this.authenticateUserDatasource);

  @override
  Future<ResultAuthentication> authenticate(String userEmail, String userPassword) {
    final result = authenticateUserDatasource.authenticate(userEmail, userPassword);
    return result;
  }

}