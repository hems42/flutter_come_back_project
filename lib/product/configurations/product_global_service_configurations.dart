import '../../core/constant/enum/log/core_log_levels_enum.dart';
import '../../core/constant/enum/log/core_to_log_types_enum.dart';
import '../constant/enum/log/product_log_manager_types_enum.dart';
import '../constant/enum/network/product_network_manager_types_enum.dart';

class ProductGlobalServiceConfigurations {
  // -- network
  static ProductNetworkManagerTypesEnum get productNetworkManagerTypesEnum =>
      ProductNetworkManagerTypesEnum.DIO;

  // -- log
  static ProductLogManagerTypesEnum selectedProductLogManagerTypesEnum =
      ProductLogManagerTypesEnum.LOGGER;
  static CoreLogLevelEnum selectedLogImportanceLevel = CoreLogLevelEnum.ERROR;
  static CoreToLogTypesEnum selectedToLogOutput = CoreToLogTypesEnum.CACHE;
}
