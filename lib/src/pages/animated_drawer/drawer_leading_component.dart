import 'package:softtech_test/src/app/app_export.dart';

class DrawerLeadingComponent extends StatelessWidget {
  const DrawerLeadingComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => drawerStateChnageUpdateIndex(
              context: context,
              advancedDrawerController:
                  BlocProvider.of<AnimatedDrawerCubit>(context)
                      .advancedDrawerController,
              isOpen: false,
            ),
        child:
            BlocBuilder<IsGradientBackgroundCubit, IsGradientBackgroundState>(
                builder: (context, state) => state.maybeWhen(
                    orElse: () => Container(
                          margin: const EdgeInsets.only(
                              left: 12, top: 9, bottom: 9, right: 6),
                          padding: const EdgeInsets.all(9),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: darken(getThemeColor(context), 0.3)),
                          child: Image.asset(
                            AssetsConstants.drawerIcon,
                          ),
                        ),
                    updateColorState: (color) => Container(
                          margin: const EdgeInsets.only(
                              left: 12, top: 9, bottom: 9, right: 6),
                          padding: const EdgeInsets.all(9),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: darken(color, 0.3)),
                          child: Image.asset(
                            AssetsConstants.drawerIcon,
                          ),
                        ))));
  }
}
