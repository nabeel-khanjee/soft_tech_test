import 'package:softtech_test/src/domain/domain.dart';

class Result<T> {
  final T? _data;
  final Error? _error;

  const Result._(this._data, this._error);

  factory Result.success(T data) => Result._(data, null);

  factory Result.failed(Error error) => Result._(null, error);

  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(Error error) failed,
  }) {
    final data = _data;
    final error = _error;

    if (error != null) {
      return failed.call(error);
    } else if (data != null) {
      return success.call(data);
    }

    return failed.call(const Error.message('Unknown error'));
  }

  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(Error error)? failed,
  }) {
    final data = _data;
    final error = _error;

    if (error != null) {
      return failed?.call(error);
    } else if (data != null) {
      return success?.call(data);
    }

    return failed?.call(const Error.message('Unknown error'));
  }

  bool isSuccess() => _data != null && _error == null;
}
