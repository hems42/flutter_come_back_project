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
    _logger = Logger(
     
    );
    
    configureManager();
  }

  
  @override
  log(
      {required String logMessage,
      CoreToLogTypesEnum? toLogTypes,
      CoreLogLevelEnum? logLevel}) {
    switch (logLevel) {
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
  logWithModel(
      {required ICoreBaseLogModel logModel, CoreToLogTypesEnum? toLogTypes}) {
    // TODO: implement logWithModel
    throw UnimplementedError();
  }
}
