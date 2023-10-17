import 'package:softtech_test/src/app/app_export.dart';

class BloodPressureWidgetHome extends StatelessWidget {
  const BloodPressureWidgetHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: getCurrentLanguageDirection()
          ? const EdgeInsets.only(top: 10, right: 10)
          : const EdgeInsets.only(top: 10, left: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: getThemeColor(context)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                AssetsConstants.bloodPressureIcon,
                height: 20,
                width: 20,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                StringConstants.bloodPressure,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: ColorConstants.green,
                    fontWeight: FontWeight.w600,
                    height: 0),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '119/78',
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      color: ColorConstants.white,
                      fontWeight: FontWeight.w600,
                      height: 0),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5, left: 5),
                  child: Text(
                    StringConstants.mmHg,
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(color: ColorConstants.white, height: 0),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
