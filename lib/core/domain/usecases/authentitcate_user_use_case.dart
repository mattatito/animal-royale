import 'package:flutter_modular/flutter_modular.dart';

import '../entity/result_authentication.dart';
import '../repositories/auth_repository.dart';

abstract class AuthenticateUserUseCase{
  Future<ResultAuthentication> authenticate(String userEmail, String userPassword);
}

class AuthenticateUserUseCaseImpl implements AuthenticateUserUseCase{

  final AuthenticationRepository authenticationRepository;

  AuthenticateUserUseCaseImpl(this.authenticationRepository);

  @override
  Future<ResultAuthentication> authenticate(String userEmail, String userPassword) {
    return authenticationRepository.authenticate(userEmail, userPassword);
  }
  
}
