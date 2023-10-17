import 'package:softtech_test/src/app/app_export.dart';

class HealthTrackerScreem extends StatefulWidget {
  const HealthTrackerScreem({super.key});
  @override
  State<HealthTrackerScreem> createState() => _HealthTrackerScreemState();
}

class _HealthTrackerScreemState extends State<HealthTrackerScreem> {
  bool isDiabeticSelected = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TrackingOverViewWidget(),
          TitleDemographicsMainHeadingInnerPage(
              increseTopSpace: true,
              titleDemographicInnerScreen: StringConstants.mentalHealth),
          const MentalhealthTrackingWidget(),
          TitleDemographicsMainHeadingInnerPage(
              increseTopSpace: true,
              titleDemographicInnerScreen: StringConstants.circumference),
          const CircumferenceWidget(),
          IsSelectedChechBoxHeading(
            isDiabeticSelected: isDiabeticSelected,
            getSelectedValue: (bool? value) =>
                setState(() => isDiabeticSelected = value!),
          ),
          const DiabeticWidget()
        ],
      ),
    );
  }
}
