import 'package:animal_royale/modules/login/infra/datasources/authenticate_user.dart';
import 'package:animal_royale/modules/login/infra/models/result_authentication_model.dart';
import 'package:dio/dio.dart';

class ApiDatasource implements AuthenticateUserDatasource{
  final Dio dio;

  ApiDatasource(this.dio);

  @override
  Future<ResultAuthenticationModel> authenticate(String userEmail, String userPassword) async {
    final response = await dio.get("http://191.232.488");

    if(response.statusCode != 200){
      throw Exception("Error");
    }

    return ResultAuthenticationModel.fromJson(response.data as String);
  }

}