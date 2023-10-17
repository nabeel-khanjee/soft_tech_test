import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/pages/home/components/blood_pressure_image_widget.dart';

class BloodPressureWidget extends StatelessWidget {
  const BloodPressureWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: getThemeColor(context)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
          const BloodPressureImageWidget(),
          Text(
            StringConstants.normal,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: ColorConstants.yellowGolden,
                fontWeight: FontWeight.w600,
                height: 0),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '119/78',
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      color: ColorConstants.white,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 0, left: 5),
                child: Text(
                  StringConstants.mmHg,
                  style: const TextStyle(
                    color: ColorConstants.white,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
