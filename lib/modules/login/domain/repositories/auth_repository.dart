import 'package:animal_royale/modules/login/domain/entity/result_authentication.dart';

abstract class AuthenticationRepository{
  Future<ResultAuthentication> authenticate(String userEmail, String userPassword);
}