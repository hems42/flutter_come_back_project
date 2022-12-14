import '../../../configurations/product_global_service_configurations.dart';
import 'logger/product_log_manager_logger.dart';
import '../../../../core/constant/enum/log/core_log_levels_enum.dart';
import '../../../../core/base/model/abstract/ife_core_base_log_model.dart';
import '../../../constant/enum/log/product_log_manager_types_enum.dart';
import '../abstract/ife_product_log_manager.dart';
import '../abstract/ife_product_log_service.dart';

class ProductLogService implements IProductLogService {
  static ProductLogService? _instance;
  late final IProductLogManager _manager;

  static ProductLogService get instance {
    _instance ??= ProductLogService._init();
    return _instance!;
  }

  ProductLogService._init() {
    _manager = _selectManager(
        ProductGlobalServiceConfigurations.selectedProductLogManagerTypesEnum)!;
  }

  IProductLogManager? _selectManager(ProductLogManagerTypesEnum types) {
    switch (types) {
      case ProductLogManagerTypesEnum.LOGGER:
        return ProductLogManagerOfLogger.instance;
      default:
        return null;
    }
  }

  //---------------

  @override
  log(
      {required String logMessage,
     required CoreLogLevelEnum logLevel}) 
     {_manager.log(logMessage: logMessage, logLevel: logLevel);}

  @override
  logWithModel({required ICoreBaseLogModel logModel}) {
    _manager.logWithModel(logModel: logModel);
  }
}
