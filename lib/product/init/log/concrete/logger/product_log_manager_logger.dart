import '../../../../configurations/product_global_service_configurations.dart';
import 'logger_custom_log_filter.dart';
import 'logger_custom_log_printer.dart';
import 'logger_custom_utils_mixin.dart';
import '../../../../../core/base/model/abstract/ife_core_base_log_model.dart';
import '../../../../../core/constant/enum/log/core_log_levels_enum.dart';
import 'package:logger/logger.dart';
import '../../abstract/ife_product_log_manager.dart';


class ProductLogManagerOfLogger extends IProductLogManager with LoggerCustomUtilsMixin {
  static ProductLogManagerOfLogger? _instance;
  late final Logger _logger;
  static ProductLogManagerOfLogger get instance {
    _instance ??= ProductLogManagerOfLogger._init();
    return _instance!;
  }

  ProductLogManagerOfLogger._init() {
    configureManager();
    _logger = Logger(
      level: convertLevel(
        ProductGlobalServiceConfigurations.selectedLogImportanceLevel ??
            CoreLogLevelEnum.DEBUG),
      printer: LoggerCustomLogPrinter(),
      filter: LoggerCustomLogFilter());
  }

  @override
  log({required String logMessage, required CoreLogLevelEnum logLevel}) 
      { logApply(_logger, convertLevel(logLevel), logMessage); }

  @override
  logWithModel(
      {required ICoreBaseLogModel logModel}) {
    _logger
    .log(convertLevel(logModel.logImportanceLevel),
      logModel.logMessage,
      logModel);
  }

  //------------------

 
}



