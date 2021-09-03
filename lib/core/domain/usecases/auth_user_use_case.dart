import 'package:animal_royale/core/domain/models/auth.dart';

abstract class AuthUserUseCase{
  Future<Auth> authenticate(String userEmail, String userPassword);
}

class AuthUserUseCaseImpl implements AuthUserUseCase{

  @override
  Future<Auth> authenticate(String userEmail, String userPassword) {
    // TODO: implement authenticate
    throw UnimplementedError();
  }
  
}
