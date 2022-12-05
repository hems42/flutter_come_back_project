import 'package:flutter_come_back_project/core/constant/enum/log/core_log_levels_enum.dart';
import 'package:flutter_come_back_project/product/configurations/product_global_service_configurations.dart';
import 'package:flutter_come_back_project/product/init/log/concrete/logger/logger_custom_utils_mixin.dart';
import 'package:logger/logger.dart';

class LoggerCustomLogFilter extends LogFilter with LoggerCustomUtilsMixin {
  @override
  bool shouldLog(LogEvent event) {
    if (ProductGlobalServiceConfigurations.selectedLogImportanceLevel != null) {
      if (ProductGlobalServiceConfigurations.selectedLogImportanceLevel! == CoreLogLevelEnum.VERBOSE) {
        return true;
      } else {
        return false;
      }
    } else {
      return true;
    }
  }
}
