import 'package:softtech_test/src/app/app_export.dart';

class HealthConditionsWidget extends StatelessWidget {
  const HealthConditionsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeWidgetHeading(
            bottonPadding: 10,
            topPadding: 22,
            isSeeAll: true,
            title: StringConstants.healthConditions),
        const HealthConditionComponent()
      ],
    );
  }
}
