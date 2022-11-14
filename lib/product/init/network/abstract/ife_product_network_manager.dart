import '../../../constant/static/network/product_network_statics.dart';
import '../../../../core/init_ment/network/abstract/ife_core_network_manager.dart';

abstract class IProductNetworkManager with ICoreNetworkManager {
  configureManager() {
    baseUrl = ProductNetworkConstants.API_BASE_MOCK_URL;
  }

  final String signUpUrl = ProductNetworkConstants.SIGN_UP_URL;
}
