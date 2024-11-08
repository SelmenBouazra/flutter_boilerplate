// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppResponse<T> _$AppResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    AppResponse<T>(
      code: (json['Code'] as num?)?.toInt(),
      data: _$nullableGenericFromJson(json['Data'], fromJsonT),
      token: json['token'] as String?,
      description: json['Description'] as String?,
      date: json['Date'] as String?,
      success: json['Success'] as bool?,
    );

Map<String, dynamic> _$AppResponseToJson<T>(
  AppResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'Code': instance.code,
      'Data': _$nullableGenericToJson(instance.data, toJsonT),
      'token': instance.token,
      'Description': instance.description,
      'Date': instance.date,
      'Success': instance.success,
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
