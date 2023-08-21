import 'package:provider_app/src/app/app_export.dart';

class StringConstants {
  static String language = 'ur_PK';

  static String get selectLanguage=> _getLang('selectLanguage');

  static String get themeDarkLight => _getLang('themeDarkLight');
  static String get receiveNotifications => _getLang('receiveNotifications');
  static String get settings => _getLang('settings');
  static String get generalSettings => _getLang('generalSettings');
  static String get selectColor => _getLang('selectColor');
  static String get onboardingText => _getLang('onboardingText');
  static String get getStarted => _getLang('getStarted');
  static String _getLang(String s) {
    return languageSelector(s);
  }

  static String languageSelector(String s) {
    if (navigationService!.navigatorKey.currentContext!.locale.toString() ==
        'ur_PK') {
      return UrduConstant.urduLabels[s] ?? '';
    } else if (navigationService!.navigatorKey.currentContext!.locale
            .toString() ==
        'en_US') {
      return EnglishConstant.englishLabels[s] ?? '';
    } else if (navigationService!.navigatorKey.currentContext!.locale
            .toString() ==
        'hi_IN') {
      return HindiConstant.hindiLabels[s] ?? '';
    } else if (navigationService!.navigatorKey.currentContext!.locale
            .toString() ==
        'ar_AE') {
      return ArabicConstant.arabicLabels[s] ?? '';
    } else if (navigationService!.navigatorKey.currentContext!.locale
            .toString() ==
        'es_ES') {
      return SpanishConstant.spanishLabels[s] ?? '';
    } else {
      return EnglishConstant.englishLabels[s] ?? '';
    }
  }
}
