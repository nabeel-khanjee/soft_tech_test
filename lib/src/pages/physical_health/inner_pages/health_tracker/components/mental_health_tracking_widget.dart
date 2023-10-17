import 'package:softtech_test/src/app/app_export.dart';

class MentalhealthTrackingWidget extends StatelessWidget {
  const MentalhealthTrackingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: HealthTrackerReadingWidget(
            fontSize: 14,
            iconColor: ColorConstants.greyText,
            subReadingColor: ColorConstants.green,
            headingColor: ColorConstants.greyText,
            subReading: StringConstants.mild,
            reading: '27%',
            forgroundColor: (Theme.of(context).scaffoldBackgroundColor),
            readingIcon: AssetsConstants.anxietyIcon,
            borderColor: getThemeColor(context),
            heading: StringConstants.anxiety,
          ),
        ),
        const SizedBox(width: 5),
        Expanded(
          child: HealthTrackerReadingWidget(
            fontSize: 14,
            iconColor: lighten(getThemeColor(context), 0.08),
            subReadingColor: ColorConstants.yellowGolden,
            headingColor: lighten(getThemeColor(context), 0.08),
            subReading: StringConstants.moderate,
            reading: '35%',
            forgroundColor: (Theme.of(context).scaffoldBackgroundColor),
            readingIcon: AssetsConstants.anxietyIcon,
            borderColor: getThemeColor(context),
            heading: StringConstants.depression,
          ),
        ),
      ],
    );
  }
}
