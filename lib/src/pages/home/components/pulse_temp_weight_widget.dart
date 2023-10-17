import 'package:softtech_test/src/app/app_export.dart';

class PulseTempWeightWidget extends StatelessWidget {
  const PulseTempWeightWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(children: [
      const Expanded(child: PulseWidget()),
      const SizedBox(
        height: 5,
      ),
      Expanded(
        child: Row(
          children: [
            HealthComditionThirdWidget(
              cardText: StringConstants.temp,
              cardTextColor: ColorConstants.pinkScanHome,
              icon: AssetsConstants.tempIcon,
              number: '98',
              subText: StringConstants.oF,
            ),
            HealthComditionThirdWidget(
              cardText: StringConstants.weight,
              cardTextColor: ColorConstants.purpleScanHome,
              icon: AssetsConstants.weughtIcon,
              number: '74',
              subText: StringConstants.kg,
            ),
          ],
        ),
      )
    ]));
  }
}
