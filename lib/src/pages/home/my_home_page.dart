import 'package:softtech_test/src/app/app_export.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool snap = false;

    return flavorBanner(
      show: true,
      child: BlocProvider(
          create: (context) => getIt.get<IsGradientBackgroundCubit>()
            ..updateState(color: getThemeColor(context)),
          child:
              BlocBuilder<IsGradientBackgroundCubit, IsGradientBackgroundState>(
            builder: (context, state) => state.maybeWhen(
              orElse: () => HomeScreenComponent(
                snap: snap,
              ),
              updateColorState: (color) => HomeScreenComponent(snap: snap),
            ),
          )),
    );
  }
}
