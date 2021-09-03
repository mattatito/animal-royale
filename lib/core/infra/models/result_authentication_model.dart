import 'dart:convert';

import '../../../core/domain/entity/result_authentication.dart';

typedef JsonMap = Map<String, dynamic>;

const auth_token = 'authToken';

class ResultAuthenticationModel extends ResultAuthentication {
  final String authToken;

  ResultAuthenticationModel({required this.authToken}) : super(authToken);

  Map<String, dynamic> toMap() {
    return {auth_token: authToken};
  }

  factory ResultAuthenticationModel.fromMap(JsonMap map) {
    return ResultAuthenticationModel(authToken: map[auth_token]);
  }

  String toJson() => json.encode(toMap());

  factory ResultAuthenticationModel.fromJson(String jsonString) =>
      ResultAuthenticationModel.fromMap(json.decode(jsonString));
}
