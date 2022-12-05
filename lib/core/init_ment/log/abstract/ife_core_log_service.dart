import '../../../base/model/abstract/ife_core_base_log_model.dart';
import '../../../constant/enum/log/core_log_levels_enum.dart';

abstract class ICoreLogService {
  log({required String logMessage, required CoreLogLevelEnum logLevel});
  logWithModel({required ICoreBaseLogModel logModel});

  // be_sure initialize

  // log open

  // log close

  // add log

  // select log type

  // get log

  // log ....

}
