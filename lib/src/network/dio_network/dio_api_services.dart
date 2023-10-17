import 'dart:io';

import 'package:dio/dio.dart';
import 'package:softtech_test/src/di/injector.dart';
import 'package:softtech_test/src/network/dio_network/dio_client_network.dart';

class DioApiServices {
  String? authToken;
  final Function() onAPIErrorDetection;

  DioApiServices({required this.onAPIErrorDetection});

  final _internetError = {
    'message': 'Please check your internet connection',
    'errorCode': 'internet_connection_error',
  };

  Future<bool> _checkInternetConnectivity() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true;
      }
    } catch (_) {
      return false;
    }
    return false;
  }

  Future<dynamic> getRequest(
    String? uri, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final connected = await _checkInternetConnectivity();
      if (connected) {
        final response = await getIt<DioClientNetwork>().dio.get(
              uri!,
              queryParameters: queryParameters,
              options: options,
              cancelToken: cancelToken,
              onReceiveProgress: onReceiveProgress,
            );
        return response.data;
      } else {
        return _internetError;
      }
    } on SocketException catch (e) {
      return NetworkExceptions.getDioException(e, onAPIErrorDetection);
    } on FormatException catch (err) {
      return NetworkExceptions.getDioException(err, onAPIErrorDetection);
    } catch (e) {
      return NetworkExceptions.getDioException(e, onAPIErrorDetection);
    }
  }

  Future<dynamic> postRequest(
    String? uri, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final connected = await _checkInternetConnectivity();
      if (connected) {
        final response = await getIt<DioClientNetwork>().dio.post(
              uri!,
              data: data,
              queryParameters: queryParameters,
              options: options,
              cancelToken: cancelToken,
              onSendProgress: onSendProgress,
              onReceiveProgress: onReceiveProgress,
            );
        return response.data;
      } else {
        return _internetError;
      }
    } on DioException catch (e) {
      return NetworkExceptions.getDioException(e, onAPIErrorDetection);
    }
  }

  Future<dynamic> putRequest(
    String? uri, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final connected = await _checkInternetConnectivity();
      if (connected) {
        final response = await getIt<DioClientNetwork>().dio.put(
              uri!,
              data: data,
              queryParameters: queryParameters,
              options: options,
              cancelToken: cancelToken,
              onSendProgress: onSendProgress,
              onReceiveProgress: onReceiveProgress,
            );
        return response.data;
      } else {
        return _internetError;
      }
    } on DioException catch (e) {
      return NetworkExceptions.getDioException(e, onAPIErrorDetection);
    }
  }

  Future<dynamic> deleteRequest(
    String? uri, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final connected = await _checkInternetConnectivity();
      if (connected) {
        final response = await getIt<DioClientNetwork>().dio.delete(
              uri!,
              data: data,
              queryParameters: queryParameters,
              options: options,
              cancelToken: cancelToken,
            );
        return response.data;
      } else {
        return _internetError;
      }
    } on SocketException catch (e) {
      return NetworkExceptions.getDioException(e, onAPIErrorDetection);
    } on FormatException catch (err) {
      return NetworkExceptions.getDioException(err, onAPIErrorDetection);
    } catch (e) {
      return NetworkExceptions.getDioException(e, onAPIErrorDetection);
    }
  }

  Future<dynamic> patchRequest(
    String? uri, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final connected = await _checkInternetConnectivity();
      if (connected) {
        final response = await getIt<DioClientNetwork>().dio.patch(
              uri!,
              data: data,
              queryParameters: queryParameters,
              options: options,
              cancelToken: cancelToken,
              onSendProgress: onSendProgress,
              onReceiveProgress: onReceiveProgress,
            );
        return response.data;
      } else {
        return _internetError;
      }
    } on SocketException catch (e) {
      return NetworkExceptions.getDioException(e, onAPIErrorDetection);
    } on FormatException catch (err) {
      return NetworkExceptions.getDioException(err, onAPIErrorDetection);
    } catch (e) {
      return NetworkExceptions.getDioException(e, onAPIErrorDetection);
    }
  }
}

abstract class NetworkExceptions {
  static Future<Map<String, dynamic>> getDioException(
    Object error,
    Function() onAPIErrorDetection,
  ) async {
    try {
      if (error is DioException && error.error is! SocketException) {
        switch (error.response?.statusCode) {
          case 403:
            await onAPIErrorDetection();
            return {
              'status': false,
              'message': "StringConstants.loginExpired",
            };
          default:
            return {
              'status': false,
              'message': error.response?.data['message'],
              'data': error.response?.data['data'],
            };
        }
      } else {
        return {
          'status': false,
          'message': 'Unexpected error occurred',
          'code': 500
        };
      }
    } catch (_) {
      return {
        'status': false,
        'message': 'Unexpected error occurred',
        'code': 500
      };
    }
  }
}
