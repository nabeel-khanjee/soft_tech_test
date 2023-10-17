import 'package:softtech_test/src/app/app_export.dart';

class CircumferenceWidget extends StatelessWidget {
  const CircumferenceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: HealthTrackerReadingWidget(
            fontSize: 14,
            iconColor: ColorConstants.purpleScanHome,
            subReadingColor: ColorConstants.greyText,
            headingColor: ColorConstants.purpleScanHome,
            subReading: StringConstants.inches,
            reading: '34',
            forgroundColor:
                lighten(Theme.of(context).scaffoldBackgroundColor, 0.05),
            readingIcon: AssetsConstants.waistIcon,
            borderColor: getThemeColor(context),
            heading: StringConstants.waist,
          ),
        ),
        const SizedBox(width: 5),
        Expanded(
          child: HealthTrackerReadingWidget(
            fontSize: 14,
            iconColor: ColorConstants.yellowGolden,
            subReadingColor: ColorConstants.greyText,
            headingColor: ColorConstants.yellowGolden,
            subReading: StringConstants.inches,
            reading: '16',
            forgroundColor:
                lighten(Theme.of(context).scaffoldBackgroundColor, 0.05),
            readingIcon: AssetsConstants.headIcon,
            borderColor: getThemeColor(context),
            heading: StringConstants.head,
          ),
        ),
      ],
    );
  }
}
