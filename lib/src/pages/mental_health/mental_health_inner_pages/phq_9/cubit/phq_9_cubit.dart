import 'package:softtech_test/src/app/app_export.dart';
part 'phq_9_cubit.freezed.dart';

class PHQ9Cubit extends Cubit<PHQ9State> {
  PHQ9Cubit() : super(const _Initial());

  int _score = 0;

  int get getUpdatedValue => _score;

  void updateIndex({required int score}) {
    emit(const _Loading());
    _score = score;
    emit(_Loaded(score));
    return;
  }
}

@freezed
class PHQ9State with _$PHQ9State {
  const factory PHQ9State.initial() = _Initial;

  const factory PHQ9State.loading() = _Loading;

  const factory PHQ9State.error(String message) = _Error;

  const factory PHQ9State.loaded(int socre) = _Loaded;
}
