import 'dart:io';

import '../base/model/abstract/ife_core_base_exception_model.dart';
import '../constant/enum/exception/core_exception_event_types_enum.dart';
import '../constant/static/exception/core_exception_error_code_statics.dart';

class NotFoundException extends ICoreBaseExceptionModel {
  NotFoundException(CoreExceptionEventTypes eventType,
      {required super.errorDetailCode, required super.errorDescription})
      : super(eventType,
            baseErrorCode:
                CoreExceptionErrorCodeCostants.B_NOT_FOUND_EXCEPTION_ERROR_CODE,
            baseStatusCode: HttpStatus.notFound.toString());
}
