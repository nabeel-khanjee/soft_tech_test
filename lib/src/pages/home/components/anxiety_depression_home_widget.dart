import 'package:softtech_test/src/app/app_export.dart';

class AnxietyDepressionHomeWidget extends StatelessWidget {
  const AnxietyDepressionHomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          HealthComditionThirdWidget(
            cardText: StringConstants.anxiety,
            cardTextColor: const Color.fromARGB(255, 187, 194, 204),
            icon: AssetsConstants.anxietyIcon,
            isReading: false,
            number: '0',
            subText: StringConstants.mild,
          ),
          const SizedBox(width: 5),
          HealthComditionThirdWidget(
            cardText: StringConstants.depression,
            isReading: false,
            cardTextColor: const Color.fromARGB(255, 98, 187, 238),
            icon: AssetsConstants.depressionIcon,
            number: '0',
            subText: StringConstants.moderate,
          ),
        ],
      ),
    );
  }
}
