import 'package:softtech_test/src/app/app_export.dart';

bool getThemeStateIsLight() =>
    Provider.of<MyTheme>(navigationService!.navigatorKey.currentContext!,
            listen: false)
        .currentTheme() ==
    ThemeMode.light;
