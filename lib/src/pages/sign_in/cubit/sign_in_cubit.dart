import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/data/dto/base_response_dto.dart';
import 'package:softtech_test/src/data/dto/token_dto.dart';
import 'package:softtech_test/src/domain/common/result.dart';
part 'sign_in_cubit.freezed.dart';

class SignInCubit extends Cubit<SignInState> {
  ApiRepository apiRepository;
  SignInCubit(this.apiRepository) : super(const _Initial());

  Future<void> signIn(
      {required String userName, required String password}) async {
    emit(const _Loading());

    final Result<BaseResponseDto<TokenDto>> result =
        await apiRepository.signIn(userName: userName, password: password);
    result.when(
      success: (data) {
        emit(_Loaded(data.data!));
      },
      failed: (error) {
        emit(_Error(error.message));
      },
    );
    return;
  }
}

@freezed
class SignInState with _$SignInState {
  const factory SignInState.initial() = _Initial;

  const factory SignInState.loading() = _Loading;

  const factory SignInState.error(String message) = _Error;

  const factory SignInState.loaded(TokenDto token) = _Loaded;
}
