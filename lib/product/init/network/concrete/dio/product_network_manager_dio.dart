import 'dart:io';
import 'package:dio/dio.dart';
import '../../../../../core/base/model/abstract/ife_core_base_response_model.dart';
import '../../../../../core/base/model/abstract/ife_core_base_network_model.dart';
import '../../../../../core/base/model/concrete/core_error_model.dart';
import '../../../../../core/base/model/concrete/core_error_response_model.dart';
import '../../../../../core/base/model/concrete/core_response_model.dart';
import '../../../../../core/constant/enum/network/core_http_request_types_enum.dart';
import '../../abstract/ife_product_network_manager.dart';

class ProductNetworkManagerOfDio extends IProductNetworkManager {
  String? accessToken;
  String? currentEmail;
  bool duringUpdateAccessToken = false;
  static ProductNetworkManagerOfDio? _instance;
  late final Dio _dio;

  static ProductNetworkManagerOfDio? get instance {
    _instance ??= ProductNetworkManagerOfDio._init();
    return _instance;
  }

  ProductNetworkManagerOfDio._init() {
    _dio = Dio();
    configureManager();
    // _dio.options.baseUrl = baseUrl;
    // _dio.options.connectTimeout = connectionTimeOut;
    _dio.options.receiveTimeout = receivingTimeOut;

    // cacheService.getAccessToken().then((value) => accessToken = value);

    /*  _dio.interceptors.add(QueuedInterceptorsWrapper(
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
          var model =
              responseParser<CoreErrorResponseModel, CoreErrorResponseModel>(
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
              'Bearer ${await cacheService. getAccessToken()}';
          return handler.next(requestOption);
        }
        return handler.next(requestOption);
      },
    ));*/
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
   return _getResponseFromRequest(path,
        data: data, type: type, parseModel: parseModel);
  }

  @override
  Future<ICoreBaseResponseModel<R>>
      fetchNoNetwork<R, T extends ICoreBaseNetworkModel>(String path,
          {required CoreHttpRequestTypesEnum type,
          required T parseModel,
          data,
          Map<String, Object>? queryParameters,
          void Function(int p1, int p2)? onReceiveProgress}) {
    return _getResponseFromRequest(path,
        data: data, type: type, parseModel: parseModel);
  }

  @override
  Future<ICoreBaseResponseModel<R>> send<R, T extends ICoreBaseNetworkModel>(
      String path,
      {required CoreHttpRequestTypesEnum type,
      required T parseModel,
      data,
      Map<String, Object>? queryParameters,
      void Function(int p1, int p2)? onReceiveProgress}) {
    return _getResponseFromRequest(path,
        data: data, type: type, parseModel: parseModel);
  }

  Future<ICoreBaseResponseModel<R>>
      _getResponseFromRequest<R, T extends ICoreBaseNetworkModel>(String path,
          {required CoreHttpRequestTypesEnum type,
          required T parseModel,
          dynamic data,
          Map<String, Object>? queryParameters,
          void Function(int p1, int p2)? onReceiveProgress}) async {
    try {
      final response = await _dio.request(path,
          data: data, options: Options(method: type.name));

      switch (response.statusCode) {
        case HttpStatus.ok:
        case HttpStatus.accepted:
          final model = responseParser<R, T>(parseModel, response.data);
          return CoreResponseModel<R>(true, data: model);
        default:
          return CoreResponseModel(false,
              error: CoreErrorModel(
                  statusCode: response.statusCode.toString(),
                  errorMessage: response.statusMessage.toString()));
      }
    } on DioError catch (e) {
      var foundFlag = e.response?.headers.value("errorflag");
      var error =
          foundFlag != null ? e.error as CoreErrorResponseModel : e.error;
      throw error;
    }
  }

  // util metod
/*  Future<bool> updateAccessToken() async {
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
  }*/

  Future<Response<dynamic>> _retry(
      RequestOptions requestOptions, Dio dio) async {
    final options = Options(
      method: requestOptions.method,
      headers: requestOptions.headers,
    );
    return dio.request<dynamic>(requestOptions.path,
        data: requestOptions.data,
        queryParameters: requestOptions.queryParameters,
        options: options);
        
  }

  updateAccessToken() {}
}

class IPlatformSelectorService {}
