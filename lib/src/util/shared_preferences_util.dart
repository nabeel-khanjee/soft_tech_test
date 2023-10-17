import 'package:softtech_test/src/app/app_export.dart';

class SharedPreferencesUtil {
  final SharedPreferences sharedPreferences;
  final Logger logger;

  SharedPreferencesUtil({
    required this.sharedPreferences,
    required this.logger,
  });

  ///get string value in prefs
  ///
  Future<void> setString(String? key, String? value) async {
    await sharedPreferences.setString(key ?? '', value ?? '');
  }

  ///get string value in prefs
  Future<String?> getString(String? key) async {
    final stringValue = sharedPreferences.getString(key!);
    return stringValue;
  }

  ///set int value in prefs
  Future setInt(String? key, int? value) async {
    await sharedPreferences.setInt(key!, value!);
  }

  ///get int value in prefs
  Future<int?> getInt(String key) async {
    final intValue = sharedPreferences.getInt(key);
    return intValue;
  }

  ///set double value in prefs
  Future setDouble(String key, double value) async {
    await sharedPreferences.setDouble(key, value);
  }

  ///get double value in prefs
  Future<double?> getDouble(String key) async {
    final doubleValue = sharedPreferences.getDouble(key);
    return doubleValue;
  }

  ///set bool value in prefs
  Future setBool(String? key, {bool? value}) async {
    await sharedPreferences.setBool(key!, value!);
  }

  ///get bool value from prefs
  Future<bool?> getBool(String key) async {
    return sharedPreferences.getBool(key);
  }

  ///remove value from prefs
  Future<bool> removeValue(String key) async {
    final isRemoved = await sharedPreferences.remove(key);
    return isRemoved;
  }

  ///check existing value in prefs
  Future<bool> isExist(String? key) async {
    return sharedPreferences.containsKey(key!);
  }

  ///set ListPrefs in prefs
  Future setStringListPrefs(String key, List<String>? value) async {
    await sharedPreferences.setStringList(key, value ?? []);
  }

  ///get ListPrefs from prefs
  Future<List<String?>?> getStringListPrefs(String key) async {
    return sharedPreferences.getStringList(key);
  }

  Future<String> getUserId() async {
    try {
      return sharedPreferences.getString(SharedPreferenceConstants.userId) ??
          '';
    } catch (e) {
      logger.e(e);
      return '';
    }
  }

  Future<void> setUserId(userId) async {
    try {
      sharedPreferences.setString(
          SharedPreferenceConstants.userId, userId.toString());
    } catch (e) {
      logger.e(e);
    }
  }

  Future<bool> clearSharedPreference() async {
    try {
      return await sharedPreferences.clear();
    } catch (e) {
      logger.e(e);
      return true; // session does not exists in the shared-preferences
    }
  }
}
