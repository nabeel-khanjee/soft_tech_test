import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/data/dto/data_list_dto.dart';
import 'package:softtech_test/src/data/dto/product_dto.dart';
import 'package:softtech_test/src/domain/common/result.dart';
part 'products_list_cubit.freezed.dart';

class ProductsListCubit extends Cubit<ProductsListState> {
  ApiRepository apiRepository;
  ProductsListCubit(this.apiRepository) : super(const _Initial());

  Future<void> getAllProducts({required int limit}) async {
    emit(const _Loading());

    final Result<DataListDto<ProductDto>> result =
        await apiRepository.getProducts(limit);
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
class ProductsListState with _$ProductsListState {
  const factory ProductsListState.initial() = _Initial;

  const factory ProductsListState.loading() = _Loading;

  const factory ProductsListState.error(String message) = _Error;

  const factory ProductsListState.loaded(List<ProductDto> products) =
      _Loaded;
}
