import 'package:flutter_come_back_project/core/base/model/abstract/ife_core_base_log_model.dart';

import '../../../../constant/enum/log/core_log_levels_enum.dart';
import '../../../../constant/enum/log/core_to_log_types_enum.dart';
import '../../abstract/ife_core_log_manager.dart';
import 'package:logger/logger.dart';

class LogManagerOfLogger with ICoreLogManager {
  static LogManagerOfLogger? _instance;
  late final _logger;
  static LogManagerOfLogger get instance {
    _instance ??= LogManagerOfLogger._init();
    return _instance!;
  }

  LogManagerOfLogger._init() {
    _logger = Logger();
  }

  @override
  log(CoreLogLevelEnum logDegree, String logMessage, {CoreToLogTypesEnum? toLogTypes}) {
    switch (logDegree) {
      case CoreLogLevelEnum.INFO:
        _logger.i(logMessage);
        break;

      case CoreLogLevelEnum.ERROR:
        _logger.e(logMessage);
        break;

      case CoreLogLevelEnum.WARN:
        _logger.w(logMessage);
        break;
      case CoreLogLevelEnum.DEBUG:
        _logger.d(logMessage);
        break;
      case CoreLogLevelEnum.TERRIBLE_FAILURE:
        _logger.wtf(logMessage);
        break;
      case CoreLogLevelEnum.VERBOSE:
        _logger.v(logMessage);
        break;
      default:
    }
  }

  @override
  logWithModel(CoreLogLevelEnum logLevel, ICoreBaseLogModel logModel, {CoreToLogTypesEnum? toLogTypes}) {
    // TODO: implement logWithModel
    throw UnimplementedError();
  }
}
