import 'package:softtech_test/src/app/app_export.dart';

class HomeScreenComponent extends StatelessWidget {
  HomeScreenComponent({
    super.key,
    required this.snap,
    this.color,
  });
  final Color? color;
  final bool snap;

  final _advancedDrawerController = AdvancedDrawerController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<AnimatedDrawerCubit>()
        ..getDashBoardOverview(context,
            pageController: PageController(initialPage: 0),
            advancedDrawerController: _advancedDrawerController),
      child: BlocBuilder<AnimatedDrawerCubit, AnimatedDrawerState>(
        builder: (context, state) => state.maybeWhen(
          loaded: (
            pageControllerLoaded,
          ) =>
              AnimatedDrawerAfterLoadedState(
            color: color ?? getThemeColor(context),
          ),
          animatedDrawerIndexUpdated: (
            index,
            isOpen,
          ) {
            return AnimatedDrawerAfterLoadedState(
                color: color ?? getThemeColor(context));
          },
          error: (error) => RetryButton(
            onTap: () => context
                .read<AnimatedDrawerCubit>()
                .getDashBoardOverview(context,
                    pageController: PageController(initialPage: 0),
                    advancedDrawerController: _advancedDrawerController),
          ),
          loading: () => const AppProgressIndicator(),
          orElse: () => const SizedBox.shrink(),
        ),
      ),
    );
  }
}

class TopBarList {
  final String icon;
  final String text;
  final int pageIndex;

  TopBarList({required this.icon, required this.text, required this.pageIndex});
}
