import '../../../../../core/base/model/abstract/ife_core_base_log_model.dart';
import '../../../../../core/constant/enum/log/core_log_levels_enum.dart';
import '../../../../../core/constant/enum/log/core_to_log_types_enum.dart';
import 'package:logger/logger.dart';
import '../../abstract/ife_product_log_manager.dart';

class ProductLogManagerOfLogger extends IProductLogManager {
  static ProductLogManagerOfLogger? _instance;
  late final Logger _logger;
  static ProductLogManagerOfLogger get instance {
    _instance ??= ProductLogManagerOfLogger._init();
    return _instance!;
  }

  ProductLogManagerOfLogger._init() {
    configureManager();
    _logger = Logger(
      printer: CustomLogPrinter(),
        level: selectedLogImportanceLevel != null
            ? _convertLevel(selectedLogImportanceLevel!)
            : null);
  }

  @override
  log(
      {required String logMessage,
      CoreToLogTypesEnum? toLogTypes,
      CoreLogLevelEnum? logLevel}) {
    if (logLevel != null) {
      _log(_convertLevel(logLevel), logMessage);
    } else {
      if (selectedLogImportanceLevel != null) {
        _log(_convertLevel(selectedLogImportanceLevel!), logMessage);
      } else {
        _logger.d(logMessage);
      }
    }
  }

  @override
  logWithModel(
      {required ICoreBaseLogModel logModel, CoreToLogTypesEnum? toLogTypes}) {
    _logger.log(_convertLevel(logModel.logImportanceLevel), logModel.logMessage,
        logModel);
  }

  //------------------

  Level _convertLevel(CoreLogLevelEnum selectedLevel) {
    switch (selectedLevel) {
      case CoreLogLevelEnum.VERBOSE:
        return Level.verbose;

      case CoreLogLevelEnum.WARN:
        return Level.warning;

      case CoreLogLevelEnum.INFO:
        return Level.info;

      case CoreLogLevelEnum.ERROR:
        return Level.error;

      case CoreLogLevelEnum.TERRIBLE_FAILURE:
        return Level.wtf;

      case CoreLogLevelEnum.DEBUG:
        return Level.debug;
      default:
        return Level.verbose;
    }
  }

  LogOutput _convertOutput(CoreToLogTypesEnum selectedOutput) {
    switch (selectedOutput) {
      case CoreToLogTypesEnum.CACHE:
        return ConsoleOutput();

      case CoreToLogTypesEnum.REMOTE:
        return ConsoleOutput();

      case CoreToLogTypesEnum.FILE:
        return ConsoleOutput();

      default:
        return ConsoleOutput();
    }
  }

  _log(Level level, String message) {
    switch (level) {
      case Level.debug:
        _logger.d(message);
        break;

      case Level.error:
        _logger.e(message);
        break;

      case Level.info:
        _logger.i(message);
        break;

      case Level.verbose:
        _logger.v(message);
        break;

      case Level.warning:
        _logger.w(message);
        break;
      case Level.wtf:
        _logger.wtf(message);
        break;

      default:
    }
  }
}

class CustomLogPrinter extends LogPrinter {
  @override
  List<String> log(LogEvent event) {
    
    return [event.message];
  }
}
