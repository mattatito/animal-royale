import 'package:animal_royale/core/domain/models/authentication_model.dart';
import 'package:animal_royale/core/domain/repositories/auth_repository.dart';

abstract class AuthenticateUserUseCase{
  Future<AuthenticationModel> authenticate(String userEmail, String userPassword);
}

class AuthenticateUserUseCaseImpl implements AuthenticateUserUseCase{

  final AuthenticationRepository authenticationRepository;

  AuthenticateUserUseCaseImpl(this.authenticationRepository);

  @override
  Future<AuthenticationModel> authenticate(String userEmail, String userPassword) {
    return authenticationRepository.authenticate(userEmail, userPassword);
  }
  
}
