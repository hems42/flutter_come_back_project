import 'package:flutter_come_back_project/product/configurations/product_global_value_configurations.dart';

import '../../../constant/static/network/product_network_statics.dart';
import '../../../../core/init_ment/network/abstract/ife_core_network_manager.dart';

abstract class IProductNetworkManager with ICoreNetworkManager {
  configureManager() {
    // url list
    baseUrl = ProductNetworkConstants.API_BASE_MOCK_URL;
    refreshTokenUrl = baseUrl + ProductNetworkConstants.REFRESH_TOKEN_URL;
    signUpUrl = baseUrl + ProductNetworkConstants.SIGN_UP_URL;
    // ---
    baseLocalDirectory = ProductGlobalValueConfigurations.baseLocalDirectory;
    receivingTimeOut = ProductGlobalValueConfigurations.receivingTimeOut;
    connectionTimeOut = ProductGlobalValueConfigurations.connectionTimeOut;
  }

  late final String signUpUrl;
}
