import 'package:flutter/material.dart';
import 'package:softtech_test/src/constant/shared_preference_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginState extends ChangeNotifier {
  final SharedPreferences prefs;
  bool _loggedIn = false;

  LoginState(this.prefs) {
    loggedIn = prefs.getBool(SharedPreferenceConstants.isLoggedIn) ?? false;
  }

  bool get loggedIn => _loggedIn;

  set loggedIn(bool value) {
    _loggedIn = value;
    prefs.setBool(SharedPreferenceConstants.isLoggedIn, value);
    notifyListeners();
  }

  void checkLoggedIn() {
    loggedIn = prefs.getBool(SharedPreferenceConstants.isLoggedIn) ?? false;
  }
}
