import 'package:softtech_test/src/app/app_export.dart';

class HealthConditionComponent extends StatelessWidget {
  const HealthConditionComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        PulseTempBloodPressureWidgetHome(),
        SizedBox(
          height: 5,
        ),
        AnxietyDepressionBmiHomeWidget(),
      ],
    );
  }
}
