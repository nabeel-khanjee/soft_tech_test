import 'package:softtech_test/src/app/app_export.dart';

class ReviewPatientsYearsComponentDoctorDetailScreen extends StatelessWidget {
  const ReviewPatientsYearsComponentDoctorDetailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: darken(getThemeColor(context), 0.3)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              const DoctorDetailHeadingOne(
                  heading: '348',
                  headingColor: ColorConstants.white,
                  fontFamily: FontConstantc.gilroySemiBold),
              DoctorDetailHeadingTwo(
                  color: !getThemeStateIsLight()
                      ? lighten(getThemeColor(context), 0.35)
                      : darken(getThemeColor(context), 0.35),
                  text: 'Reviews')
            ],
          ),
          Container(
            width: 1,
            height: 60,
            color: getThemeColor(context),
          ),
          Column(
            children: [
              const DoctorDetailHeadingOne(
                  heading: '700+',
                  headingColor: ColorConstants.white,
                  fontFamily: FontConstantc.gilroySemiBold),
              DoctorDetailHeadingTwo(
                  color: !getThemeStateIsLight()
                      ? lighten(getThemeColor(context), 0.35)
                      : darken(getThemeColor(context), 0.35),
                  text: 'Patients')
            ],
          ),
          Container(width: 1, height: 60, color: getThemeColor(context)),
          Column(
            children: [
              const DoctorDetailHeadingOne(
                  heading: '15',
                  headingColor: ColorConstants.white,
                  fontFamily: FontConstantc.gilroySemiBold),
              DoctorDetailHeadingTwo(
                  color: !getThemeStateIsLight()
                      ? lighten(getThemeColor(context), 0.35)
                      : darken(getThemeColor(context), 0.35),
                  text: 'Years')
            ],
          )
        ],
      ),
    );
  }
}
