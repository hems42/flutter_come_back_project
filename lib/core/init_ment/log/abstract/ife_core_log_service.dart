import '../../../constant/enum/log/core_log_levels_enum.dart';
import '../../../constant/enum/log/core_to_log_types_enum.dart';

abstract class ICoreLogService {
  log(CoreLogLevelEnum logLevel, String logMessage, {CoreToLogTypesEnum? toLogTypes});

  // be_sure initialize

  // log open

  // log close

  // add log

  // select log type

  // get log

  // log ....

}
