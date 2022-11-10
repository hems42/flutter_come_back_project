// ignore_for_file: overridden_fields

import '../../../core/base/model/abstract/ife_core_base_error_model.dart';
import '../../../core/base/model/abstract/ife_core_base_response_model.dart';

class ProductResponseModel<T> extends ICoreBaseResponseModel<T> {
  ProductResponseModel(bool success, {T? data, ICoreBaseErrorModel? error})
      : super(success, data: data, error: error);
}
