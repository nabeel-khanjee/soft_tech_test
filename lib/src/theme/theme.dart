import 'package:softtech_test/src/app/app_export.dart';

class MyTheme with ChangeNotifier {
  static bool isDark = false;
  static Color color = ColorConstants.royalBlue;
  void getStorageTheme() async {
    isDark = (await getIt
        .get<SharedPreferencesUtil>()
        .getBool(SharedPreferenceConstants.isDark))!;
  }

  ThemeMode currentTheme()  {
    return isDark ? ThemeMode.dark : ThemeMode.light;
  }

  void switchColor(Color color) { 
    MyTheme.color = color;
    notifyListeners();
  }

  void switchTheme() {
    isDark = !isDark;
     getIt
        .get<SharedPreferencesUtil>()
        .setBool(SharedPreferenceConstants.isDark, value: isDark);
    notifyListeners();
  }

  Color getColor() {
    return MyTheme.color;
  }
}
