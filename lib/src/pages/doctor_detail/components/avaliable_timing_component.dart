import 'package:softtech_test/src/app/app_export.dart';

class AvaliableTimingComponentDoctorDetailScreen extends StatelessWidget {
  const AvaliableTimingComponentDoctorDetailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DoctorDetailHeadingOne(
            heading: 'Avaliable Timings',
            headingColor: !getThemeStateIsLight()
                ? darken(getThemeColor(context), 0.35)
                : ColorConstants.white,
            fontFamily: FontConstantc.gilroySemiBold),
        const SizedBox(height: 10),
        DoctorDetailHeadingTwo(
          color: getThemeStateIsLight()
              ? lighten(getThemeColor(context), 0.35)
              : darken(getThemeColor(context), 0.35),
          text: 'Monday - Friday 08:00 - 20:00',
        ),
      ],
    );
  }
}
