import 'package:softtech_test/src/app/app_export.dart';

class TempPulseRespiratoryRateWidget extends StatelessWidget {
  const TempPulseRespiratoryRateWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: HealthTrackerReadingWidget(
            fontSize: 12,
            iconColor: ColorConstants.pinkScanHome,
            subReadingColor: ColorConstants.greyText,
            headingColor: ColorConstants.white,
            subReading: StringConstants.oF,
            reading: '98',
            forgroundColor: Theme.of(context).scaffoldBackgroundColor,
            readingIcon: AssetsConstants.tempIcon,
            borderColor: getThemeColor(context),
            heading: StringConstants.temp,
          ),
        ),
        const SizedBox(width: 5),
        Expanded(
          child: HealthTrackerReadingWidget(
            fontSize: 12,
            iconColor: ColorConstants.pinkScanHome,
            subReadingColor: ColorConstants.greyText,
            headingColor: ColorConstants.white,
            subReading: StringConstants.perMin,
            reading: '88',
            forgroundColor: (Theme.of(context).scaffoldBackgroundColor),
            readingIcon: AssetsConstants.pulseIcon,
            borderColor: getThemeColor(context),
            heading: StringConstants.pulseRate,
          ),
        ),
        const SizedBox(width: 5),
        Expanded(
          child: HealthTrackerReadingWidget(
            fontSize: 12,
            iconColor: ColorConstants.pinkScanHome,
            subReadingColor: ColorConstants.greyText,
            headingColor: ColorConstants.white,
            subReading: StringConstants.inches,
            reading: '34',
            forgroundColor: (Theme.of(context).scaffoldBackgroundColor),
            readingIcon: AssetsConstants.waistIcon,
            borderColor: getThemeColor(context),
            heading: StringConstants.respiratory,
          ),
        ),
      ],
    );
  }
}
