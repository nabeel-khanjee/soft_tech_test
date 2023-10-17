import 'package:softtech_test/src/app/app_export.dart';

class MedicationTileWidget extends StatelessWidget {
  const MedicationTileWidget({
    super.key,
    required this.element,
  });

  final MapEntry<int, Medications> element;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: lighten(getThemeColor(context), 0.13),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Container(
            height: 38,
            width: 38,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: ColorConstants.white,
                borderRadius: BorderRadius.circular(100)),
            child: Image.asset(
              element.value.type == StringConstants.tablet
                  ? AssetsConstants.tabletIcon
                  : AssetsConstants.capsuleIcon,
              height: 14.2,
              width: 14.2,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${element.value.title}, ${element.value.dose}',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontFamily: FontConstantc.gilroyMedium,
                        ),
                  ),
                  Text(
                    '${element.value.number.toString()} ${element.value.type}, ${StringConstants.every} ${element.value.inEvery.toString()} ${StringConstants.hrs}',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontFamily: FontConstantc.gilroyMedium,
                        color: lighten(getThemeColor(context), 0.3)),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 38,
            width: 38,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: ColorConstants.white,
                borderRadius: BorderRadius.circular(100)),
            child: Image.asset(
              element.value.isNotification
                  ? AssetsConstants.isEnableIconMedications
                  : AssetsConstants.isDisableIconMedications,
              height: 22.2,
              width: 22.2,
            ),
          ),
        ],
      ),
    );
  }
}
