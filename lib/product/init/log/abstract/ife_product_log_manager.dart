import 'package:flutter_come_back_project/product/configurations/product_global_service_configurations.dart';

import '../../../../core/init_ment/log/abstract/ife_core_log_manager.dart';

abstract class IProductLogManager with ICoreLogManager {
  configureManager() {
  
    selectedLogImportanceLevel =
        ProductGlobalServiceConfigurations.selectedLogImportanceLevel;
    selectedToLogOutput =
        ProductGlobalServiceConfigurations.selectedToLogOutput;
  }
}
