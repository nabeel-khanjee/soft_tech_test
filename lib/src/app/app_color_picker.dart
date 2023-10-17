import 'package:softtech_test/src/app/app_export.dart';

class AppColorPicker extends StatelessWidget {
  const AppColorPicker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        18,
      ),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            StringConstants.selectColor,
          ),
          const SizedBox(
            height: 20,
          ),
          MaterialColorPicker(
            onColorChange: (color) async {
              switchColorApp(color: color);
              BlocProvider.of<IsGradientBackgroundCubit>(context)
                  .updateState(color: color);
            },
            onMainColorChange: (ColorSwatch? color) async {
              switchColorApp(color: color!);
              BlocProvider.of<IsGradientBackgroundCubit>(context)
                  .updateState(color: color);
            },
            selectedColor: getThemeColor(context),
          ),
        ],
      ),
    );
  }
}
