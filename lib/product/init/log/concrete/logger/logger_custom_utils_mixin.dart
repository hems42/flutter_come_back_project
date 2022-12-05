import 'package:logger/logger.dart';
import '../../../../../core/constant/enum/log/core_log_levels_enum.dart';
import '../../../../../core/constant/enum/log/core_to_log_types_enum.dart';

mixin LoggerCustomUtilsMixin {

   Level convertLevel(CoreLogLevelEnum selectedLevel) {
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

  LogOutput convertOutput(CoreToLogTypesEnum selectedOutput) {
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

  logApply(Logger logger, Level level, String message) {
    switch (level) {
      case Level.debug:
        logger.d(message);
        break;

      case Level.error:
        logger.e(message);
        break;

      case Level.info:
        logger.i(message);
        break;

      case Level.verbose:
        logger.v(message);
        break;

      case Level.warning:
        logger.w(message);
        break;
      case Level.wtf:
        logger.wtf(message);
        break;

      default:
    }
  }

}