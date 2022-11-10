import 'package:flutter_come_back_project/core/constant/enum/theme/theme_types_enum.dart';
import 'package:flutter_come_back_project/core/constant/enum/cache/caching_keys_enum.dart';
import 'package:flutter_come_back_project/core/constant/enum/cache/cache_property_types_enum.dart';
import 'package:flutter_come_back_project/core/constant/enum/cache/cache_metods_enum.dart';
import 'package:flutter_come_back_project/core/base/model/abstract/ife_base_cache_response_model.dart';
import 'package:flutter_come_back_project/core/base/model/abstract/ife_base_cache_request_model.dart';
import 'package:flutter_come_back_project/product/init/product_cache/abstract/ife_product_cache_service.dart';

class ProductCacheService implements IProductCacheService {
  @override
  Future<IBaseCacheResponseModel> cacheModel(
      IBaseCacheRequestModel cacheRequestModel,
      {required CacheMethodsEnum cacheMetodEnum,
      CachingKeysEnum? cachingKey,
      CachePropertTypesEnum? cachePropertyType,
      String? cacheTopic}) {
    // TODO: implement cacheModel
    throw UnimplementedError();
  }

  @override
  Future<bool> deleteAccesToken(
      {String? email, Function(String? email)? checkEmail}) {
    // TODO: implement deleteAccesToken
    throw UnimplementedError();
  }

  @override
  Future<bool> deleteRefreshToken(
      {String? email, Function(String? email)? checkEmail}) {
    // TODO: implement deleteRefreshToken
    throw UnimplementedError();
  }

  @override
  Future deleteValue(CachingKeysEnum cachingKey,
      {String? cacheTopic, cacheUtil}) {
    // TODO: implement deleteValue
    throw UnimplementedError();
  }

  @override
  Future<bool> ensureInit() {
    // TODO: implement ensureInit
    throw UnimplementedError();
  }

  @override
  Future<String?> getAccessToken({Function(String? email)? checkEmail}) {
    // TODO: implement getAccessToken
    throw UnimplementedError();
  }

  @override
  ThemeTypesEnum getCurrentTheme() {
    // TODO: implement getCurrentTheme
    throw UnimplementedError();
  }

  @override
  Future<String?> getRefreshToken({Function(String? email)? checkEmail}) {
    // TODO: implement getRefreshToken
    throw UnimplementedError();
  }

  @override
  Future getValue(CachingKeysEnum cachingKey, {String? cacheTopic, cacheUtil}) {
    // TODO: implement getValue
    throw UnimplementedError();
  }

  @override
  Future<bool> saveAccesToken(String accesToken, {String? email}) {
    // TODO: implement saveAccesToken
    throw UnimplementedError();
  }

  @override
  Future<bool> saveRefreshToken(String refreshToken, {String? email}) {
    // TODO: implement saveRefreshToken
    throw UnimplementedError();
  }

  @override
  Future saveValue(CachingKeysEnum cachingKey, valueForSave,
      {String? cacheTopic, cacheUtil}) {
    // TODO: implement saveValue
    throw UnimplementedError();
  }

  @override
  Future<bool> updateAccesToken(String accesToken, {String? email}) {
    // TODO: implement updateAccesToken
    throw UnimplementedError();
  }

  @override
  Future<bool> updateRefreshToken(String refreshToken, {String? email}) {
    // TODO: implement updateRefreshToken
    throw UnimplementedError();
  }

  @override
  Future updateValue(CachingKeysEnum cachingKey, valueForSave,
      {String? cacheTopic, cacheUtil}) {
    // TODO: implement updateValue
    throw UnimplementedError();
  }
}
