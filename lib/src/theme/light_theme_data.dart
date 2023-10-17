import 'package:softtech_test/src/app/app_export.dart';

ThemeData lightThemeData(MyTheme theme, {Color? color}) {
  return ThemeData(
    useMaterial3: true,
    colorSchemeSeed: color ?? theme.getColor(),
    brightness: Brightness.light,
    scaffoldBackgroundColor: darken(theme.getColor(), 0.35),
    appBarTheme: AppBarTheme(
        backgroundColor: darken(theme.getColor(), 0.35),
        foregroundColor: ColorConstants.white),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
        fixedSize: const MaterialStatePropertyAll(Size.fromHeight(60)),
        maximumSize: const MaterialStatePropertyAll(Size.fromHeight(60)),
        minimumSize: const MaterialStatePropertyAll(Size.fromHeight(60)),
        backgroundColor: MaterialStatePropertyAll(
          theme.getColor(),
        ),
        foregroundColor: const MaterialStatePropertyAll(
          ColorConstants.white,
        ),
      ),
    ),
    drawerTheme: const DrawerThemeData(
        backgroundColor: Colors.transparent, elevation: 0),
    buttonTheme: ButtonThemeData(
      buttonColor: theme.getColor(),
      textTheme: ButtonTextTheme.accent,
      height: 70,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
    ),
    textTheme: TextTheme(
      titleSmall:
          FontStylesConstants.gilroy(fontSize: 8, color: ColorConstants.white),
      titleMedium:
          FontStylesConstants.gilroy(fontSize: 10, color: ColorConstants.white),
      bodySmall:
          FontStylesConstants.gilroy(fontSize: 14, color: ColorConstants.white),
      bodyMedium:
          FontStylesConstants.gilroy(fontSize: 16, color: ColorConstants.white),
      bodyLarge:
          FontStylesConstants.gilroy(fontSize: 18, color: ColorConstants.white),
      labelSmall:
          FontStylesConstants.gilroy(fontSize: 12, color: ColorConstants.white),
      titleLarge:
          FontStylesConstants.gilroy(fontSize: 20, color: ColorConstants.white),
      labelMedium:
          FontStylesConstants.gilroy(fontSize: 22, color: ColorConstants.white),
      labelLarge:
          FontStylesConstants.gilroy(fontSize: 24, color: ColorConstants.white),
      headlineSmall:
          FontStylesConstants.gilroy(fontSize: 26, color: ColorConstants.white),
      headlineMedium:
          FontStylesConstants.gilroy(fontSize: 28, color: ColorConstants.white),
      headlineLarge:
          FontStylesConstants.gilroy(fontSize: 30, color: ColorConstants.white),
      displaySmall:
          FontStylesConstants.gilroy(fontSize: 32, color: ColorConstants.white),
      displayMedium:
          FontStylesConstants.gilroy(fontSize: 34, color: ColorConstants.white),
      displayLarge:
          FontStylesConstants.gilroy(fontSize: 36, color: ColorConstants.white),
    ),
  );
}
