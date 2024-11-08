import 'package:effia_sultan_mobile/feature/authentication/data/models/user.dart';
import 'package:flutter_boilerplate/feature/authentication/data/models/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auth_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class AuthResponse {
  int? code;
  User? user;
  String? token;
  String? description;
  String? date;
  bool? success;

  AuthResponse({
    this.code,
    this.user,
    this.token,
    this.description,
    this.date,
    this.success,
  });

  factory AuthResponse.fromJson(Map<String, dynamic> json) => _$AuthResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AuthResponseToJson(this);

}
