import 'package:flutter/material.dart';
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
   var cacheService;
   var logService;

  // rule - connection properties...
  late final int _connectionTimeOut;
  late final int _receivingTimeOut;

  // base url - paths
  late final String _baseUrl;

  // local directory paths
  late final String _baseLocalDirectory;

  // acces token refesh retry time number
  late final int _updateAccessTokenRefreshRetryTime;

  // other url paths
  late final _refreshTokenUrl;

  String get baseUrl => _baseUrl;
  set baseUrl(String baseUrl) => _baseUrl = baseUrl;

  String get refreshTokenUrl => _refreshTokenUrl;
  set refreshTokenUrl(String refreshTokenUrl) =>
      _refreshTokenUrl = refreshTokenUrl;

  int get connectionTimeOut => _connectionTimeOut;
  set connectionTimeOut(int connectionTimeOut) =>
      _connectionTimeOut = connectionTimeOut;

  int get receivingTimeOut => _receivingTimeOut;
  set receivingTimeOut(int receivingTimeOut) =>
      _receivingTimeOut = receivingTimeOut;

  String get baseLocalDirectory => _baseLocalDirectory;
  set baseLocalDirectory(String baseLocalDirectory) =>
      _baseLocalDirectory = baseLocalDirectory;


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
