import 'package:flutter_come_back_project/product/init/network/concrete/dio/product_network_manager_dio.dart';

import '../../../../core/constant/enum/network/core_http_request_types_enum.dart';
import '../../../../core/base/model/abstract/ife_core_base_response_model.dart';
import '../../../../core/base/model/abstract/ife_core_base_network_model.dart';
import '../../../configurations/product_global_service_configurations.dart';
import '../../../constant/enum/network/product_network_manager_types_enum.dart';
import '../abstract/ife_product_network_manager.dart';
import '../abstract/ife_product_network_service.dart';

class ProductNetworkService implements IProductNetworkService {


static ProductNetworkService? _instance;
  late final IProductNetworkManager _manager;

  static ProductNetworkService get instance {
    _instance ??= ProductNetworkService._init();
    return _instance!;
  }

  ProductNetworkService._init() {
    _manager = _selectManager(
      ProductGlobalServiceConfigurations
      .productNetworkManagerTypesEnum)!;
  }

  IProductNetworkManager? _selectManager(ProductNetworkManagerTypesEnum types) {
    switch (types) {
      case ProductNetworkManagerTypesEnum.DIO:
        return ProductNetworkManagerOfDio.instance;

      default:
        return null;
    }
  }



  @override
  Future<ICoreBaseResponseModel<R>> fetch<R, T extends ICoreBaseNetworkModel>(
      String path,
      {required CoreHttpRequestTypesEnum type,
      required T parseModel,
      data,
      Map<String, Object>? queryParameters,
      void Function(int p1, int p2)? onReceiveProgress}) {
    
    throw UnimplementedError();
  }

  @override
  Future<ICoreBaseResponseModel<R>>
      fetchNoNetwork<R, T extends ICoreBaseNetworkModel>(String path,
          {required CoreHttpRequestTypesEnum type,
          required T parseModel,
          data,
          Map<String, Object>? queryParameters,
          void Function(int p1, int p2)? onReceiveProgress}) {
  
    throw UnimplementedError();
  }

  @override
  Future<ICoreBaseResponseModel<R>> send<R, T extends ICoreBaseNetworkModel>(
      String path,
      {required CoreHttpRequestTypesEnum type,
      required T parseModel,
      data,
      Map<String, Object>? queryParameters,
      void Function(int p1, int p2)? onReceiveProgress}) {
   
    throw UnimplementedError();
  }
}
