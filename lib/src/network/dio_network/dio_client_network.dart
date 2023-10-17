import 'dart:io';

import 'package:dio/dio.dart';
import 'package:softtech_test/src/constant/app_constants.dart';
import 'package:softtech_test/src/constant/http_constants.dart';
import 'package:softtech_test/src/constant/shared_preference_constants.dart';
import 'package:softtech_test/src/di/injector.dart';
import 'package:softtech_test/src/network/dio_network/dio_api_services.dart';
import 'package:softtech_test/src/util/logger_utils.dart';
import 'package:softtech_test/src/util/shared_preferences_util.dart';

class DioClientNetwork {
  final Dio dio;

  DioClientNetwork(this.dio);

  String? getAuthToken() {
    return getIt<DioApiServices>().authToken;
  }

  Future<void> initializeDioClientNetwork({
    String? token,
    required int locale,
    String? userId = '0',
    bool deleteToken = false,
  }) async {
    LoggerUtil.logs('initializeDioClientNetwork11 $token');
    // locale - 1 = english, 2 = urdu
    dio.options = setBaseOptions()
      ..headers['Authorization'] = token
      ..headers['locale'] = locale
      // ..headers['platform'] = Platform.isIOS
      //     ? AppConstants.iosPlatform
      //     : AppConstants.androidPlatform
      ..headers['platform'] = 'app'
      ..headers['device'] = Platform.isIOS
          ? AppConstants.iosPlatform
          : AppConstants.androidPlatform
      ..headers['user-id'] = userId;
    if (deleteToken) {
      await getIt<SharedPreferencesUtil>()
          .removeValue(SharedPreferenceConstants.apiAuthToken);
      getIt<DioApiServices>().authToken = null;
      dio.options.headers['Authorization'] = null;
      LoggerUtil.logs('token deleted');
    } else {
      LoggerUtil.logs('initializeDioClientNetwork token: $token');
      if (token != null) {
        /// Save new token in shared pref
        await getIt<SharedPreferencesUtil>().setString(
          SharedPreferenceConstants.apiAuthToken,
          token,
        );

        /// Save token in Dio class
        getIt<DioApiServices>().authToken = token;
        dio.options.headers['Authorization'] = token;
        LoggerUtil.logs('New token: $token');
      } else {
        /// Get token from shared pref
        final oldToken = await getIt<SharedPreferencesUtil>()
            .getString(SharedPreferenceConstants.apiAuthToken);
        LoggerUtil.logs('SharedPreferenceConstants.apiAuthToken: $oldToken');
        if (oldToken != '') {
          /// Save token in Dio class
          getIt<DioApiServices>().authToken = oldToken;
          dio.options.headers['Authorization'] = oldToken;
        }
      }
    }

    LoggerUtil.logs('headers: ${dio.options.headers}');
  }

  BaseOptions setBaseOptions() {
    return BaseOptions(
      connectTimeout: const Duration(seconds: 300000),
      baseUrl: HttpConstants.base,
    );
  }

  dynamic requestInterceptor(RequestOptions options) async {
    if (getAuthToken() == null) {
      final token = await getIt<SharedPreferencesUtil>()
          .getString(SharedPreferenceConstants.apiAuthToken);
      if (token != null) {
        getIt<DioApiServices>().authToken = token;
        // dio.options.headers[WebHeadersEnum.token] =
        //     getIt<DioApiServices>().authToken = _token;
      } else {}
      return options;
    }
  }

  dynamic responseInterceptor(Response options) async {
    return options;
  }

  dynamic errorInterceptor(DioException dioError) async {
    if (dioError.message!.contains('ERROR_001')) {
      // this will push a new route and remove all the routes that were present
      // navigatorKey.currentState.pushNamedAndRemoveUntil(
      //     "/login", (Route<dynamic> route) => false);
    } else if (dioError.response!.statusCode == 403) {}
    return dioError;
  }
}
