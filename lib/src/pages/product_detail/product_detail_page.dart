import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/pages/product_detail/cubit/product_detail_cubit.dart';
import 'package:softtech_test/src/pages/products/products_screen.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key, required this.args});
  final ProductDetailArgs args;

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
        appBar: AppBar(
          title: Text(args.title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: BlocProvider(
            create: (context) =>
                getIt.get<ProductDetailCubit>()..getProductDetail(id: args.id),
            child: BlocBuilder<ProductDetailCubit, ProductDetailState>(
              builder: (context, state) => state.maybeWhen(
                orElse: () => Container(),
                loading: () => const Center(child: AppProgressIndicator()),
                error: (message) => ErrorState(
                  onTap: () {
                    context
                        .read<ProductDetailCubit>()
                        .getProductDetail(id: args.id);
                  },
                  msg: message,
                ),
                loaded: (product) => Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Image.network(
                            product.image!,
                            height: 150,
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('description'.toUpperCase()),
                              Text(product.description!),
                            ],
                          ))
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                              child: Column(
                            children: [
                              Text('category'.toUpperCase()),
                              Text(product.category!)
                            ],
                          )),
                          Expanded(
                              child: Column(
                            children: [
                              Text('rating'.toUpperCase()),
                              Text(product.rating!.rate!.toString())
                            ],
                          )),
                          Expanded(
                              child: Column(
                            children: [
                              Text('count'.toUpperCase()),
                              Text(product.rating!.count!.toString())
                            ],
                          )),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        isGradient: false);
  }
}

class ProductDetailArgs {
  final int id;
  final String title;

  ProductDetailArgs({
    required this.title,
    required this.id,
  });
}
