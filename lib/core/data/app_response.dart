import 'package:json_annotation/json_annotation.dart';

part 'app_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class AppResponse<T> {
  @JsonKey(name: 'Code')
  int? code;
  @JsonKey(name: 'Data')
  T? data;
  @JsonKey(name: 'token')
  String? token;
  @JsonKey(name: 'Description')
  String? description;
  @JsonKey(name: 'Date')
  String? date;
  @JsonKey(name: 'Success')
  bool? success;

  AppResponse({
    this.code,
    this.data,
    this.token,
    this.description,
    this.date,
    this.success,
  });

  factory AppResponse.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$AppResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$AppResponseToJson(this, toJsonT);
}
