import 'package:softtech_test/src/app/app_export.dart';

class DoctorComponent extends StatelessWidget {
  const DoctorComponent(
      {super.key,
      required this.title,
      required this.callTitle,
      required this.imageUrl});

  final String title;
  final String callTitle;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        NavigationUtil.push(context, RouteConstants.chatRoute);
      },
      child: Container(
        height: 96,
        width: double.infinity,
        decoration: BoxDecoration(
          color: darken(getThemeColor(context), 0.25),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 84,
              width: 74,
              decoration: BoxDecoration(
                color: ColorConstants.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(imageUrl),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: !getThemeStateIsLight()
                        ? (lighten(getThemeColor(context), 0.35))
                        : null,
                  ),
                ),
                Text(
                  callTitle,
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        color: ColorConstants.white.withOpacity(0.6),
                      ),
                ),
                Row(
                  children: [
                    appointmentSlot(context, " 28 min"),
                    const SizedBox(width: 20),
                    appointmentSlot(context, " Orthopaedic"),
                  ],
                ),
              ],
            ),
            (callTitle.contains("Voice"))
                ? GestureDetector(
                    onTap: () {
                      NavigationUtil.push(
                          context, RouteConstants.audioCallingRoute);
                    },
                    child: SvgPicture.asset("assets/icon/call.svg"),
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          NavigationUtil.push(
                              context, RouteConstants.chatRoute);
                        },
                        child: communicationIcon(
                          "assets/icon/chat_icon.svg",
                          const Color(0xFFFDC13A),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          NavigationUtil.push(
                              context, RouteConstants.videoCallingRoute);
                        },
                        child: communicationIcon(
                          "assets/icon/video_call.svg",
                          const Color(0xFFD077FF),
                        ),
                      ),
                    ],
                  )
          ],
        ),
      ),
    );
  }

  Widget appointmentSlot(BuildContext _, String title) {
    return Row(
      children: [
        Icon(
          Icons.access_time,
          color: ColorConstants.white.withOpacity(0.6),
          size: 15,
        ),
        Text(
          title,
          style: Theme.of(_).textTheme.labelSmall!.copyWith(
                color: ColorConstants.white.withOpacity(0.6),
              ),
        )
      ],
    );
  }

  Widget communicationIcon(String svgUrl, Color kColor) {
    return Container(
      height: 32,
      width: 40,
      decoration: BoxDecoration(
        color: kColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: SvgPicture.asset(svgUrl),
      ),
    );
  }
}
