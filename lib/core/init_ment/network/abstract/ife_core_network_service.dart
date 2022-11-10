import '../../../base/model/abstract/ife_core_base_network_model.dart';
import '../../../base/model/abstract/ife_core_base_response_model.dart';
import '../../../constant/enum/network/core_http_request_types_enum.dart';

abstract class ICoreNetworService {
  Future<ICoreBaseResponseModel<R>> fetch<R, T extends ICoreBaseNetworkModel>(
      String path,
      {required CoreHttpRequestTypesEnum type,
      required T parseModel,
      dynamic data,
      Map<String, Object>? queryParameters,
      void Function(int, int)? onReceiveProgress});

  Future<ICoreBaseResponseModel<R>> send<R, T extends ICoreBaseNetworkModel>(
      String path,
      {required CoreHttpRequestTypesEnum type,
      required T parseModel,
      dynamic data,
      Map<String, Object>? queryParameters,
      void Function(int, int)? onReceiveProgress});

  Future<ICoreBaseResponseModel<R>>
      fetchNoNetwork<R, T extends ICoreBaseNetworkModel>(String path,
          {required CoreHttpRequestTypesEnum type,
          required T parseModel,
          dynamic data,
          Map<String, Object>? queryParameters,
          void Function(int, int)? onReceiveProgress});
}
