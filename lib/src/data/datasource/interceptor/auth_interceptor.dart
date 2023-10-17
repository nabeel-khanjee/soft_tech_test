import 'package:softtech_test/src/app/app_export.dart';

class AuthInterceptor extends InterceptorsWrapper {
  static const requiresAuth = 'requiresAuthentication';

  final Logger logger;
  final SharedPreferencesUtil _sharedPreferencesUtil;
  AuthInterceptor(
    this.logger,
    this._sharedPreferencesUtil,
  );

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // final hasSessionExpired = await _preferences.hasTokenExpired() == true;
    final bool requestRequiresAuth;
    if (options.extra.containsKey(requiresAuth)) {
      requestRequiresAuth = options.extra[requiresAuth] as bool;
    } else {
      requestRequiresAuth = true;
    }

    if (requestRequiresAuth) {
      final userId = await _sharedPreferencesUtil.getUserId();
      final authToken = await getIt<SharedPreferencesUtil>().getString(
        SharedPreferenceConstants.apiAuthToken,
      );

      options.headers['Authorization'] = authToken;
      options.headers['locale'] = BlocProvider.of<AppCubit>(
                      navigationService!.navigatorKey.currentContext!)
                  .isUrdu(navigationService!.navigatorKey.currentContext!.locale
                      .toString()) ==
              true
          ? 2
          : 1;
      // options.headers['locale'] =2;
      options.headers['device'] = Platform.isIOS
          ? AppConstants.iosPlatform
          : AppConstants.androidPlatform;

      options.headers['platform'] = 'app';
      options.headers['user-id'] = userId.isNotEmpty ? userId : '0';

      logger.d("header : ${options.headers}");
    }

    super.onRequest(options, handler);
  }

  @override
  Future<void> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401 /* unauthorized */) {
      // await _preferences.clearSession();
    }

    super.onError(err, handler);
  }
}
