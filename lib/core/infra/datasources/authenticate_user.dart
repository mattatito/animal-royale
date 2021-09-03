import 'package:animal_royale/core/infra/models/result_authentication_model.dart';

abstract class AuthenticateUserDatasource{
  Future<ResultAuthenticationModel> authenticate(String userEmail, String userPassword);
}