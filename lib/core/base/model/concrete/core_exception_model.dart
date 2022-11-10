import '../abstract/ife_core_base_exception_model.dart';

class CoreExceptionModel extends ICoreBaseExceptionModel {
  CoreExceptionModel(super.exceptionEventType,
      {required super.baseErrorCode,
      required super.errorDetailCode,
      required super.errorDescription,
      required super.baseStatusCode});
}
