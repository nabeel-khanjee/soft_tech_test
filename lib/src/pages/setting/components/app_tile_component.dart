import 'package:softtech_test/src/app/app_export.dart';

class AppTileComponent extends StatelessWidget {
  final String test;
  final String image;
  final VoidCallback onTap;
  final bool isExpandable;

  const AppTileComponent({
    super.key,
    required this.test,
    required this.image,
    required this.onTap,
    required this.isExpandable,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IsGradientBackgroundCubit, IsGradientBackgroundState>(
        builder: (context, state) => state.maybeWhen(
            orElse: () => GestureDetector(
                  onTap: onTap,
                  child: Container(
                    margin: !isExpandable
                        ? const EdgeInsets.symmetric(vertical: 10)
                        : EdgeInsets.zero,
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    // height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: darken(lighten(getThemeColor(context), 0.2), 0.1),
                    ),
                    child: Row(
                      children: [
                        TilesIconComponent(image: image),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(test),
                      ],
                    ),
                  ),
                ),
            updateColorState: (color) => GestureDetector(
                  onTap: onTap,
                  child: Container(
                    margin: !isExpandable
                        ? const EdgeInsets.symmetric(vertical: 10)
                        : EdgeInsets.zero,
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    // height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: darken(lighten(color, 0.2), 0.1),
                    ),
                    child: Row(
                      children: [
                        TilesIconComponent(image: image),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(test),
                      ],
                    ),
                  ),
                )));
  }
}
