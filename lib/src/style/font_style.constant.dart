import 'package:softtech_test/src/app/app_export.dart';

class FontStylesConstants {
  ///Noto Naskh Arabic
  static TextStyle notoNaskhArabic(
          {required double fontSize,
          Color color = ColorConstants.black,
          FontWeight fontWeight = FontWeight.normal,
          TextDecoration decoration = TextDecoration.none,
          double letterSpacing = 0,
          double height = 0,
          bool isBaseLine = false}) =>
      GoogleFonts.notoNaskhArabic(
        color: color,
        fontWeight: fontWeight,
        fontStyle: FontStyle.normal,
        fontSize: 14,
        height: height,
        letterSpacing: letterSpacing,
      );
  static TextStyle gilroy(
          {required double fontSize,
          String? fontFamily,
          Color? color,
          FontWeight fontWeight = FontWeight.normal,
          TextDecoration decoration = TextDecoration.none,
          double letterSpacing = 0,
          double height = 0,
          bool isBaseLine = false}) =>
      TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontStyle: FontStyle.normal,
        fontFamily: fontFamily ?? FontConstantc.gilroyRegular,
        fontSize: fontSize,
        height: height,
        letterSpacing: letterSpacing,
      );
}
