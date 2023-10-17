import 'package:softtech_test/src/app/app_export.dart';

class BMIWidget extends StatelessWidget {
  const BMIWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: lighten(getThemeColor(context), 0.08)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
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
                StringConstants.bmi,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: ColorConstants.yellowGolden,
                    fontWeight: FontWeight.w600,
                    height: 0),
              )
            ],
          ),
          SizedBox(
            height: 85,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '25',
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            color: ColorConstants.white,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6, left: 5),
                      child: Text(
                        StringConstants.kgPerMerterSquare,
                        style: const TextStyle(
                          color: ColorConstants.white,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      StringConstants.weight,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: ColorConstants.white,
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
                          '79',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                color: ColorConstants.white,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 6, left: 5),
                          child: Text(
                            StringConstants.kg,
                            style: const TextStyle(
                              color: ColorConstants.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      StringConstants.height,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: ColorConstants.white,
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
                          '178',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                color: ColorConstants.white,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 6, left: 5),
                          child: Text(
                            StringConstants.merterSquare,
                            style: const TextStyle(
                              color: ColorConstants.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
