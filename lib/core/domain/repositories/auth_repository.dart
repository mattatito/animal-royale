import 'package:animal_royale/core/domain/models/authentication_model.dart';

abstract class AuthenticationRepository{
  Future<AuthenticationModel> authenticate(String userEmail, String userPassword);
}