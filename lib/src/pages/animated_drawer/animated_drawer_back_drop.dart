import 'package:softtech_test/src/app/app_export.dart';

class AnimatedDrawerBackDrop extends StatelessWidget {
  const AnimatedDrawerBackDrop({
    super.key,
    required this.color,
  });
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          // tileMode: TileMode.mirror,
          end: Alignment.topCenter,
          colors: [
            darken(color, 0.3),
            color,
          ],
        ),
      ),
      child: const AdvancedDrawerChildComponent(),
    );
  }
}
