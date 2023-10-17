import 'package:softtech_test/src/app/app_export.dart';

class CustomCircularIcon extends StatelessWidget {
  const CustomCircularIcon({super.key, required this.imageUrl, this.color});

  final String imageUrl;

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      width: 52,
      decoration: BoxDecoration(
        color: color ?? lighten(getThemeColor(context), 0.25).withOpacity(0.7),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: SvgPicture.asset(imageUrl),
      ),
    );
  }
}
