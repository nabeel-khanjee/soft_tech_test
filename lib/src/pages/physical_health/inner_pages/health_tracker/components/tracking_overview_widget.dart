import 'package:softtech_test/src/app/app_export.dart';

class TrackingOverViewWidget extends StatelessWidget {
  const TrackingOverViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [BloodPressureAndBmiWidget(), TempPulseRespiratoryRateWidget()],
    );
  }
}
