// ignore_for_file: unused_field
import 'package:json_annotation/json_annotation.dart';
import '../abstract/ife_core_base_network_model.dart';

part 'core_error_response_model.g.dart';

@JsonSerializable()
class CoreErrorResponseModel extends ICoreBaseNetworkModel {
  late String? statusCode;
  final String? errorDescription;
  final String? errorMessage;
  final String? errorCode;
  final String? timestamp;

  CoreErrorResponseModel(
      {this.statusCode,
      this.errorDescription,
      this.errorMessage,
      this.errorCode,
      this.timestamp})
      : super();

  @override
  fromJson(Map<String, dynamic> json) {
    return _$ErrorResponseModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$ErrorResponseModelToJson(this);
  }

  @override
  String toString() {
    return "statusCode :  $statusCode \n" +
        "errorDescription : $errorDescription \n" +
        "errorMessage : $errorMessage \n" +
        "errorCode : $errorCode \n" +
        "timestamp : $timestamp";
  }
}
