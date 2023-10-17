import 'package:softtech_test/src/app/app_export.dart';

class AboutDoctorComponentDoctorDetailScreen extends StatelessWidget {
  const AboutDoctorComponentDoctorDetailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DoctorDetailHeadingOne(
            heading: 'About Doctor',
            headingColor: !getThemeStateIsLight()
                ? darken(getThemeColor(context), 0.35)
                : ColorConstants.white,
            fontFamily: FontConstantc.gilroySemiBold),
        const SizedBox(height: 10),
        DoctorDetailHeadingTwo(
          color: getThemeStateIsLight()
              ? lighten(getThemeColor(context), 0.35)
              : darken(getThemeColor(context), 0.35),
          text:
              'Five quacking zephyrs jolt my wax bed. Flummoxed by job, kvetching W. zaps Iraq. Cozy sphinx waves quart jug of bad milk. A very bad quack might jinx zippy fowls. Few quips galvanized the mock jury box. Quick brown dogs jump over the lazy fox. The jay, pig, fox, zebra, and my wolves quack! Blowzy red vixens fight for a quick jump. Joaquin Phoenix was gazed by MTV for luck. A wizard’s job is to vex chumps quickly in fog. Watch “Jeopardy! “, Alex Trebek’s fun TV quiz game. Woven silk pyjamas exchanged for blue quartz. Brawny gods just flocked up to quiz and vex him.',
        ),
      ],
    );
  }
}
