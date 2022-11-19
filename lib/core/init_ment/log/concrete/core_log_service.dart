import 'package:flutter_come_back_project/core/base/model/abstract/ife_core_base_log_model.dart';

import '../../../constant/enum/log/core_log_levels_enum.dart';
import '../../../constant/enum/log/core_log_manager_types_enum.dart';
import '../../../constant/enum/log/core_to_log_types_enum.dart';
import 'logger/core_log_manager_logger.dart';
import '../abstract/ife_core_log_manager.dart';
import '../abstract/ife_core_log_service.dart';

class LogService implements ICoreLogService {
  static LogService? _instance;
  late final ICoreLogManager _manager;

  static LogService get instance {
    _instance ??= LogService._init();
    return _instance!;
  }

  LogService._init() {
    _manager = _selectManager(CoreLogManagerTypesEnum.LOGGER)!;
  }

  ICoreLogManager? _selectManager(CoreLogManagerTypesEnum types) {
    switch (types) {
      case CoreLogManagerTypesEnum.LOGGER:
        return LogManagerOfLogger.instance;
      default:
        return LogManagerOfLogger.instance;
    }
  }

  @override
  log(CoreLogLevelEnum logDegree, String logMessage, {CoreToLogTypesEnum? toLogTypes}) {
    _manager.log(logDegree, logMessage, toLogTypes: toLogTypes);
  }

  @override
  logWithModel(CoreLogLevelEnum logLevel, ICoreBaseLogModel logModel, {CoreToLogTypesEnum? toLogTypes}) {
    // TODO: implement logWithModel
    throw UnimplementedError();
  }
}
