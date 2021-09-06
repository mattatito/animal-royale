import 'dart:convert';

import 'package:animal_royale/modules/login/domain/entity/result_authentication.dart';

typedef JsonMap = Map<String, dynamic>;

const auth_token = 'authToken';

class ResultAuthenticationModel extends ResultAuthentication {
  final String authToken;
  final String userNickName;
  final String userEmail;

  ResultAuthenticationModel({required this.userNickName,required this.userEmail, required this.authToken}) : super(authToken, userNickName, userEmail);

  Map<String, dynamic> toMap() {
    return {auth_token: authToken, 'userNickName' : userNickName, 'userEmail' : userEmail};
  }

  factory ResultAuthenticationModel.fromMap(JsonMap map) {
    return ResultAuthenticationModel(authToken: map[auth_token], userNickName: map['userNickName'], userEmail: map['userEmail']);
  }

  String toJson() => json.encode(toMap());

  factory ResultAuthenticationModel.fromJson(String jsonString) =>
      ResultAuthenticationModel.fromMap(json.decode(jsonString));
}
