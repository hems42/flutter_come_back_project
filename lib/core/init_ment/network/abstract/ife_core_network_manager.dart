import 'package:flutter/material.dart';
import '../../../constant/static/network/core_network_statics.dart';
import '../../../base/model/abstract/ife_core_base_network_model.dart';
import 'ife_core_network_service.dart';

mixin ICoreNetworkManager implements ICoreNetworService {
  // ignore: todo
  // TODO List :
  // - internet connection checking management
  // - request encode
  // - response decode
  // - upload file
  // - download file
  // - cancel scenerio
  // - onConncetionlost sceniro
  // - onReConnceted sceniro
  //
  //
  //
  //  Genel Yapı
  // log konusu
  // cache konusu ve senaryoları
  //hata yönetimi ve senaryoları
  // bağlantı durumu ve yönetimi ve de senareyoları
  // dosya indirme ve bindirme işlemeleri
  // dosya aktarma senaryoları
  // istekleri sıralanması senaryoları

  // util serviceses...
  // var cacheService = CoreServiceWorkBench.cacheService;
  //var logService = CoreServiceWorkBench.logService;

  // rule - connection properties...
  final int _connectionTimeOut = 300;
  final int _receivingTimeOut = 5;

  // base url - paths
  late final String _baseUrl;

  // local directory paths
  final String _baseLocalDirectory = "";

  // acces token refesh retry time number
  int updateAccessTokenRefreshRetryTime = 3;

  String get baseUrl => _baseUrl;

  set baseUrl(String baseUrl) => _baseUrl = baseUrl;

  get refreshTokenUrl => CoreNetworkConstants.REFRESH_TOKEN_URL;

  get connectionTimeOut => _connectionTimeOut;

  get receivingTimeOut => _receivingTimeOut;

  get baseLocalDirectory => _baseLocalDirectory;

  // needable interrup metods...
  VoidCallback? onRequestV;
  Function? onRequestF;
  VoidCallback? onResponseV;
  Function? onResponseF;
  VoidCallback? onErrorV;
  Function? onErrorF;
  VoidCallback? onConnectionLostV;
  Function? onConnectionLostF;
  VoidCallback? onReConnectedV;
  Function? onReConnectedF;
  // util methods...
  R? responseParser<R, T>(ICoreBaseNetworkModel model, dynamic data) {
    if (data is List) {
      return data.map((e) => model.fromJson(e)).toList().cast<T>() as R;
    } else if (data is Map) {
      return model.fromJson(data as Map<String, dynamic>) as R;
    }
    return data as R?;
  }

  bool hasInternetnetConnection() {
    return true;
  }
}