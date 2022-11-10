import '../constant/enum/cache/core_caching_keys_enum.dart';

extension ExtensionOfCachingKeys on CoreCachingKeysEnum {
  String get toRaw {
    switch (this) {
      case CoreCachingKeysEnum.ACCESS_TOKEN:
        return 'ACCESS_TOKEN';

      case CoreCachingKeysEnum.REFRESH_TOKEN:
        return 'REFRESH_TOKEN';

      case CoreCachingKeysEnum.SELECTED_THEME:
        return 'SELECTED_THEME';

      case CoreCachingKeysEnum.ACCESS_TOKEN:
        return 'ACCESS_TOKEN';
      default:
        return 'NOT_SELECTED';
    }
  }
}
