// ignore_for_file: overridden_fields
import '../abstract/ife_core_base_error_model.dart';
import '../abstract/ife_core_base_response_model.dart';

class CoreResponseModel<T> extends ICoreBaseResponseModel<T> {
  CoreResponseModel(bool success, {T? data, ICoreBaseErrorModel? error})
      : super(success, data: data, error: error);
}
