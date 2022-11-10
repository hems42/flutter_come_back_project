import 'package:dio/dio.dart';
import '../../../../../core/base/model/abstract/ife_core_base_response_model.dart';
import '../../../../../core/base/model/abstract/ife_core_base_network_model.dart';
import '../../../../../core/base/model/concrete/core_error_response_model.dart';
import '../../../../../core/constant/enum/network/core_http_request_types_enum.dart';
import '../../abstract/ife_product_network_manager.dart';

class ProductNetworkManagerOfHive extends IProductNetworkManager {
  String? accessToken;
  String? currentEmail;
  bool duringUpdateAccessToken = false;
  static ProductNetworkManagerOfHive? _instance;
  late final Dio _dio;

  static ProductNetworkManagerOfHive? get instance {
    _instance ??= ProductNetworkManagerOfHive._init();
    return _instance;
  }

  ProductNetworkManagerOfHive._init() {
    _dio = Dio();
    //  _dio.options.baseUrl = baseUrl;
    //_dio.options.connectTimeout = connectionTimeOut;
    // _dio.options.receiveTimeout = receivingTimeOut;

    // cacheService.getAccessToken().then((value) => accessToken = value);

       _dio.interceptors.add(QueuedInterceptorsWrapper(
      onError: (error, handler) async {
        if (error.response?.statusCode == 401) {
          for (int i = 0; i <= updateAccessTokenRefreshRetryTime; i++) {
            if (await updateAccessToken() == true) {
              var retryResponse = await _retry(error.requestOptions, _dio);
              return handler.resolve(retryResponse);
            } else {
              if (duringUpdateAccessToken == 3) {
                break;
              }
              return handler.next(error);
            }
          }
        } else if (error.response?.headers.value("errorflag") == "true") {
          var model = responseParser<CoreErrorResponseModel, CoreErrorResponseModel>(
              CoreErrorResponseModel(), error.response!.data);
          model!.statusCode = error.response!.statusCode.toString();
          error.type = DioErrorType.other;
          error.error = model;
        }

        handler.next(error);
      },
      onRequest: (requestOption, handler) async {
        if (!duringUpdateAccessToken) {
          requestOption.headers['Authorization'] =
              'Bearer ${await cacheService.getAccessToken()}';
          return handler.next(requestOption);
        }
        return handler.next(requestOption);
      },
    ));
  }
  
  get cacheService => null;

    @override
    Future<ICoreBaseResponseModel<R>> fetch<R, T extends ICoreBaseNetworkModel>(
        String path,
        {required CoreHttpRequestTypesEnum type,
        required T parseModel,
        data,
        Map<String, Object>? queryParameters,
        void Function(int p1, int p2)? onReceiveProgress}) {
      // TODO: implement fetch
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
      // TODO: implement fetchNoNetwork
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
      // TODO: implement send
      throw UnimplementedError();
    }
    
      updateAccessToken() {}
      
        _retry(RequestOptions requestOptions, Dio dio) {}

    /*
  // util metod
  Future<bool> updateAccessToken() async {
    final refreshToken = await cacheService.getRefreshToken(
        checkEmail: (email) => currentEmail = email);
    if (refreshToken != null) {
      duringUpdateAccessToken = true;
      IBaseResponseModel response =
          await fetch<RefreshTokenResponseModel, RefreshTokenResponseModel>(
              refreshTokenUrl + "?refreshToken=$refreshToken",
              type: HttpRequestTypesEnum.GET,
              parseModel: RefreshTokenResponseModel());

      if (response.success == true) {
        var refreshTokenResponse = response.data as RefreshTokenResponseModel;
        await cacheService
            .saveAccesToken(refreshTokenResponse.accessToken.toString());
        duringUpdateAccessToken = false;
        return true;
      } else {
        await cacheService.deleteAccesToken(email: currentEmail);
        await cacheService.deleteRefreshToken(email: currentEmail);
        return false;
      }
    } else {
      await cacheService.deleteAccesToken(email: currentEmail);
      await cacheService.deleteRefreshToken(email: currentEmail);
      return false;
    }
  }

  Future<Response<dynamic>> _retry(
      RequestOptions requestOptions, Dio dio) async {
    final options = new Options(
      method: requestOptions.method,
      headers: requestOptions.headers,
    );
    return dio.request<dynamic>(requestOptions.path,
        data: requestOptions.data,
        queryParameters: requestOptions.queryParameters,
        options: options);
  }*/
  }


class IPlatformSelectorService {}
