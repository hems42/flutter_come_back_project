import '../base/model/abstract/ife_core_base_exception_model.dart';
import '../base/model/concrete/core_error_response_model.dart';

extension CoreExtensionOfIBaseExceptionModel on ICoreBaseExceptionModel {
  String get errorBase => this.errorCode.toString().substring(0, 4);
  String get errorTopic => this.errorCode.toString().substring(4, 7);
  String get errorDetail => this.errorCode.toString().substring(7);
}

extension CoreExtensionOfErrorResponseModel on CoreErrorResponseModel {
  String get errorBase => this.errorCode.toString().substring(0, 4);
  String get errorTopic => this.errorCode.toString().substring(4, 7);
  String get errorDetail => this.errorCode.toString().substring(7);
}
