import '../../../../../core/base/model/abstract/ife_base_cache_request_model.dart';
import '../../../../../core/base/model/abstract/ife_base_cache_response_model.dart';
import '../../../../../core/constant/enum/cache/cache_metods_enum.dart';
import '../../../../../core/constant/enum/cache/cache_property_types_enum.dart';
import '../../../../../core/constant/enum/cache/caching_keys_enum.dart';
import '../../../../../core/constant/enum/theme/theme_types_enum.dart';
import '../../../../../core/init/stuff/platform_selector/abstract/ife_platform_selector_service.dart';
import '../../abstract/ife_product_cache_manager.dart';

class ProductCacheManagerOfHive extends IProductCacheManager {

   

  @override
  // TODO: implement cacheAuthenticationName
  String get cacheAuthenticationName => throw UnimplementedError();

  @override
  // TODO: implement cacheFolderName
  String get cacheFolderName => throw UnimplementedError();

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
  // TODO: implement cacheSettingsName
  String get cacheSettingsName => throw UnimplementedError();

  @override
  // TODO: implement cacheSettingsSelectedLanguageType
  String get cacheSettingsSelectedLanguageType => throw UnimplementedError();

  @override
  // TODO: implement cacheSettingsSelectedThemeType
  String get cacheSettingsSelectedThemeType => throw UnimplementedError();

  @override
  // TODO: implement currentEmail
  get currentEmail => throw UnimplementedError();

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
  String generateTokenKey(String? email, CachingKeysEnum key) {
    // TODO: implement generateTokenKey
    throw UnimplementedError();
  }

  @override
  Future<String?> getAccessToken({Function(String? email)? checkEmail}) {
    // TODO: implement getAccessToken
    throw UnimplementedError();
  }

  @override
  Future<String> getCacheFolderPath() {
    // TODO: implement getCacheFolderPath
    throw UnimplementedError();
  }

  @override
  String? getCachingPath(IPlatformSelectorService platformSelectorService) {
    // TODO: implement getCachingPath
    throw UnimplementedError();
  }

  @override
  ThemeTypesEnum getCurrentTheme() {
    // TODO: implement getCurrentTheme
    throw UnimplementedError();
  }

  @override
  String? getEmailFromTokenSearchItem(
      String tokenSearchItem, CachingKeysEnum key) {
    // TODO: implement getEmailFromTokenSearchItem
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
  setCurrentEmail(String? email) {
    // TODO: implement setCurrentEmail
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
