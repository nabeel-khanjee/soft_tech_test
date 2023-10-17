import 'package:flutter/rendering.dart';
import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/data/dto/product_dto.dart';
import 'package:softtech_test/src/pages/product_detail/product_detail_page.dart';
import 'package:softtech_test/src/pages/products/cubit/products_list_cubit.dart';

List<ProductDto> productsList = [];

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int limit = 10;
    return MainScaffold(
        appBar: const AppBarcomponent(
            isGradient: false,
            title: "Products",
            isBackAppBar: false,
            isTitleTowLines: false),
        body: BlocProvider(
          create: (context) =>
              getIt.get<ProductsListCubit>()..getAllProducts(limit: limit),
          child: BlocConsumer<ProductsListCubit, ProductsListState>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {},
                loaded: (products) {
                  productsList = products;
                  limit = products.length;
                },
              );
            },
            builder: (context, state) => Padding(
              padding: const EdgeInsets.all(10.0),
              child: state.maybeWhen(
                orElse: () {
                  return LoadedState(
                      limit: limit += 10,
                      isLoadingMore: false,
                      productsList: productsList);
                },
                loading: () {
                  return LoadedState(
                      limit: limit += 10,
                      isLoadingMore: true,
                      productsList: productsList);
                },
                loaded: (products) {
                  return LoadedState(
                      limit: limit += 10,
                      isLoadingMore: false,
                      productsList: productsList);
                },
                error: (message) {
                  return ErrorState(
                    onTap: () {
                      context
                          .read<ProductsListCubit>()
                          .getAllProducts(limit: limit);
                    },
                    msg: message,
                  );
                },
              ),
            ),
          ),
        ),
        isGradient: true);
  }
}

class ErrorState extends StatelessWidget {
  const ErrorState({
    super.key,
    required this.msg,
    required this.onTap,
  });

  final String msg;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width / 1.5,
          child: Text(
            msg,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: MediaQuery.of(context).size.width / 3,
          height: 50,
          child: ElevatedButton(onPressed: onTap, child: const Text('Retry')),
        )
      ],
    ));
  }
}

class LoadedState extends StatelessWidget {
  const LoadedState({
    super.key,
    required this.isLoadingMore,
    required this.productsList,
    required this.limit,
  });

  final bool? isLoadingMore;
  final List<ProductDto> productsList;
  final int limit;

  @override
  Widget build(BuildContext context) {
    return NotificationListener<UserScrollNotification>(
      onNotification: (notification) {
        final ScrollDirection direction = notification.direction;
        if (direction == ScrollDirection.reverse) {
          if (isLoadingMore == false &&
              notification.metrics.maxScrollExtent ==
                  notification.metrics.pixels) {
            if (productsList.isNotEmpty) {
              context.read<ProductsListCubit>().getAllProducts(
                    limit: limit,
                  );
            }
          }
        }
        return true;
      },
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: productsList.length,
                    itemBuilder: (context, index) {
                      return ProductComponent(
                        id: productsList[index].id ?? 0,
                        category: productsList[index].category ?? "",
                        description: productsList[index].description ?? "",
                        image: productsList[index].image ?? "",
                        title: productsList[index].title ?? "",
                      );
                    },
                  ),
                ),
                if (isLoadingMore == true)
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: AppProgressIndicator(),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ProductComponent extends StatelessWidget {
  const ProductComponent({
    super.key,
    required this.title,
    required this.description,
    required this.category,
    required this.image,
    required this.id,
  });
  final int id;
  final String title;
  final String description;
  final String category;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        NavigationUtil.push(context, RouteConstants.productDetaiRoute,
            args: ProductDetailArgs(id: id, title: title));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: ColorConstants.lightGrey)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontFamily: FontConstantc.gilroyBlack)),
            const SizedBox(height: 20),
            Text(description),
            const SizedBox(height: 20),
            Text(category.toUpperCase()),
            const SizedBox(height: 20),
            Image.network(
              image,
              height: 150,
              width: 150,
            )
          ],
        ),
      ),
    );
  }
}
