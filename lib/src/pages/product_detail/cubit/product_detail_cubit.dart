
import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/data/dto/base_response_dto.dart';
import 'package:softtech_test/src/data/dto/product_dto.dart';
import 'package:softtech_test/src/domain/common/result.dart';
part 'product_detail_cubit.freezed.dart';

class ProductDetailCubit extends Cubit<ProductDetailState> {
  ApiRepository apiRepository;
  ProductDetailCubit(this.apiRepository) : super(const _Initial());

  Future<void> getProductDetail({required int id}) async {
    emit(const _Loading());

    final Result<BaseResponseDto<ProductDto>> result =
        await apiRepository.getProductDetails(id);
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
class ProductDetailState with _$ProductDetailState {
  const factory ProductDetailState.initial() = _Initial;

  const factory ProductDetailState.loading() = _Loading;

  const factory ProductDetailState.error(String message) = _Error;

  const factory ProductDetailState.loaded(ProductDto product) =
      _Loaded;
}
