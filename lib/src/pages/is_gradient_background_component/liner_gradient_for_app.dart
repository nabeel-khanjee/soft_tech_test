import 'package:softtech_test/src/app/app_export.dart';

LinearGradient linerGradientForApp({
  bool isVertical = false,
  Color? color,
}) {
  return LinearGradient(
    begin: isVertical ? Alignment.centerLeft : Alignment.bottomCenter,
    tileMode: TileMode.mirror,
    end: isVertical ? Alignment.centerRight : Alignment.topCenter,
    colors: [
      !getThemeStateIsLight()
          ? Theme.of(navigationService!.navigatorKey.currentContext!)
              .scaffoldBackgroundColor
          : darken(
              color ??
                  getThemeColor(
                      navigationService!.navigatorKey.currentContext!),
              0.3),
      !getThemeStateIsLight()
          ? Theme.of(navigationService!.navigatorKey.currentContext!)
              .scaffoldBackgroundColor
          : color ??
              getThemeColor(navigationService!.navigatorKey.currentContext!),
    ],
  );
}
