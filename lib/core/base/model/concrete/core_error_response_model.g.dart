// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'core_error_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoreErrorResponseModel _$ErrorResponseModelFromJson(
        Map<String, dynamic> json) =>
    CoreErrorResponseModel(
      statusCode: json['statusCode'] as String?,
      errorDescription: json['errorDescription'] as String?,
      errorMessage: json['errorMessage'] as String?,
      errorCode: json['errorCode'] as String?,
      timestamp: json['timestamp'] as String?,
    );

Map<String, dynamic> _$ErrorResponseModelToJson(
        CoreErrorResponseModel instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'errorDescription': instance.errorDescription,
      'errorMessage': instance.errorMessage,
      'errorCode': instance.errorCode,
      'timestamp': instance.timestamp,
    };
