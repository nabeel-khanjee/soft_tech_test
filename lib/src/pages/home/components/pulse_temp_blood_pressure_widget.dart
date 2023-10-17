import 'package:softtech_test/src/app/app_export.dart';

class PulseTempBloodPressureWidgetHome extends StatelessWidget {
  const PulseTempBloodPressureWidgetHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 100,
      child: Row(children: [
        BloodPressureWidgetHome(),
        SizedBox(width: 5),
        PulseTempWidget()
      ]),
    );
  }
}
