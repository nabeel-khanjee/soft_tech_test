import 'package:softtech_test/src/app/app_export.dart';

class PulseTempWidget extends StatelessWidget {
  const PulseTempWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          HealthComditionThirdWidget(
            cardText: StringConstants.pulse,
            iconColor: ColorConstants.redIndicatorColor,
            cardTextColor: ColorConstants.redIndicatorColor,
            icon: AssetsConstants.pulseIcon,
            number: '88',
            subText: StringConstants.perMin,
          ),
          const SizedBox(width: 5),
          HealthComditionThirdWidget(
            cardText: StringConstants.temp,
            cardTextColor: ColorConstants.pinkScanHome,
            icon: AssetsConstants.tempIcon,
            number: '98',
            subText: StringConstants.oF,
          ),
        ],
      ),
    );
  }
}
