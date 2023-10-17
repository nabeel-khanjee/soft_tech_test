import 'package:softtech_test/src/app/app_export.dart';

AnimatedDrawerCubit drawerStateChnageUpdateIndex(
        {int? index,
        required bool isOpen,
        AdvancedDrawerController? advancedDrawerController,
        PageController? pageController,
        required BuildContext context}) =>
    BlocProvider.of<AnimatedDrawerCubit>(context)
      ..updateIndex(
          pageController: pageController,
          advancedDrawerController: advancedDrawerController ??
              BlocProvider.of<AnimatedDrawerCubit>(context)
                  .advancedDrawerController,
          index: index ??
              BlocProvider.of<AnimatedDrawerCubit>(context).getBottomNavIndex,
          isOpen: isOpen);
