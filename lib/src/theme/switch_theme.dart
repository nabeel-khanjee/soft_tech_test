import 'package:softtech_test/src/app/app_export.dart';

void switchThemeApp() =>
    Provider.of<MyTheme>(navigationService!.navigatorKey.currentContext!,
            listen: false)
        .switchTheme();
