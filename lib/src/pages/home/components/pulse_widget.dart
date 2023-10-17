import 'package:softtech_test/src/app/app_export.dart';

class PulseWidget extends StatelessWidget {
  const PulseWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: getThemeColor(context)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                AssetsConstants.pulseIcon,
                height: 20,
                width: 20,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                StringConstants.pulse,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: ColorConstants.yellowGolden,
                    fontWeight: FontWeight.w600,
                    height: 0),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '88',
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          color: ColorConstants.white,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 7, left: 5),
                    child: Text(
                      StringConstants.perMin,
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(color: ColorConstants.greyText),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 7, left: 5),
                child: Text(
                  StringConstants.checkup,
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall!
                      .copyWith(color: ColorConstants.yellowGolden),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
