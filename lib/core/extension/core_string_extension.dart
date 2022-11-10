import 'package:easy_localization/easy_localization.dart';
import '../constant/static/app/core_application_statics.dart';

extension ExtensionOfStringLocalization on String {
  String get locale => this.tr();

  String? get isValidEmail =>
      contains(RegExp(CoreApplicationConstants.EMAIL_REGIEX))
          ? null
          : 'Email does not valid';

  bool get isValidEmails =>
      RegExp(CoreApplicationConstants.EMAIL_REGIEX).hasMatch(this);
}

extension ImagePathExtension on String {
  String get toSVG => 'asset/svg/$this.svg';
}
