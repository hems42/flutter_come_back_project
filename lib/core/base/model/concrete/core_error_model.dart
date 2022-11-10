import '../abstract/ife_core_base_error_model.dart';

class CoreErrorModel extends ICoreBaseErrorModel {
  final String? errorDescription;
  final String errorMessage;
  final String? errorCode;
  final String? timestamp;

  CoreErrorModel(
      {this.errorDescription,
      this.errorCode,
      this.timestamp,
      required this.errorMessage,
      required String statusCode})
      : super(errorMessage: errorMessage, statusCode: statusCode);
}
