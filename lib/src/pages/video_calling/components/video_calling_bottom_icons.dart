import 'package:softtech_test/src/app/app_export.dart';

class VideoCallingBottomIcons extends StatelessWidget {
  const VideoCallingBottomIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        customIcon("assets/icon/message.svg", context),
        customIcon("assets/icon/audio.svg", context),
        customIcon("assets/icon/video.svg", context),
        GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return const EndSessionDialog(); // Use the CustomDialog class
              },
            );
          },
          child: customIcon(
            "assets/icon/end_call.svg",
            context,
            ColorConstants.redIndicatorColor,
          ),
        ),
      ],
    );
  }

  Widget customIcon(String imageUrl, BuildContext context, [Color? color]) {
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
