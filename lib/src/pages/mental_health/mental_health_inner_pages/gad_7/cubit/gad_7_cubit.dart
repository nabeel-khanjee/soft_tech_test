import 'package:softtech_test/src/app/app_export.dart';
part 'gad_7_cubit.freezed.dart';

class GAD7Cubit extends Cubit<GAD7State> {
  GAD7Cubit() : super(const _Initial());

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
class GAD7State with _$GAD7State {
  const factory GAD7State.initial() = _Initial;

  const factory GAD7State.loading() = _Loading;

  const factory GAD7State.error(String message) = _Error;

  const factory GAD7State.loaded(int socre) = _Loaded;
}
