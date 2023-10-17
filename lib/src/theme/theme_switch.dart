import 'package:softtech_test/src/app/app_export.dart';

class ThemeSwitchApp extends StatelessWidget {
  const ThemeSwitchApp({
    super.key,
    required this.image,
    required this.text,
    required this.onChnage,
    required this.value,
  });

  final String image;
  final String text;
  final Function(bool value) onChnage;
  final bool value;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IsGradientBackgroundCubit, IsGradientBackgroundState>(
      builder: (context, state) => state.maybeWhen(
          orElse: () => Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: SwitchListTile.adaptive(
                  contentPadding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  tileColor: lighten(getThemeColor(context), 0.1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TilesIconComponent(image: image),
                      const SizedBox(width: 10),
                      Expanded(child: Text(text)),
                    ],
                  ),
                  value: value,
                  onChanged: (value) => onChnage(value),
                ),
              ),
          updateColorState: (color) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: SwitchListTile.adaptive(
                  contentPadding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  tileColor: lighten(color, 0.1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TilesIconComponent(image: image),
                      const SizedBox(width: 10),
                      Expanded(child: Text(text)),
                    ],
                  ),
                  value: value,
                  onChanged: (value) => onChnage(value),
                ),
              )),
    );
  }
}

class TilesIconComponent extends StatelessWidget {
  const TilesIconComponent({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: lighten(getThemeColor(context), 0.5)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            image,
            height: 30,
            fit: BoxFit.fill,
            color: darken(
              getThemeColor(context),
              0.3,
            ),
          ),
        ));
  }
}
