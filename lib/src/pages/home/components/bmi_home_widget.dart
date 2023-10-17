import 'package:softtech_test/src/app/app_export.dart';

class BmiHomeWidget extends StatelessWidget {
  const BmiHomeWidget({
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
                        Image.asset(AssetsConstants.pulseIcon,
                            height: 20,
                            width: 20,
                            color: const Color(0xFFE0A7FF)),
                        const SizedBox(width: 5),
                        Text(StringConstants.bmi,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                    color: const Color(0xFFE0A7FF),
                                    fontWeight: FontWeight.w600,
                                    height: 0))
                      ]),
                  Padding(
                      padding: const EdgeInsets.only(bottom: 4.0),
                      child: Row(children: [
                        Expanded(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                              Text(StringConstants.weight,
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall!
                                      .copyWith(
                                          color: ColorConstants.white,
                                          height: 0)),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text('88',
                                        style: Theme.of(context)
                                            .textTheme
                                            .displaySmall!
                                            .copyWith(
                                                color: ColorConstants.white,
                                                fontWeight: FontWeight.w600,
                                                height: 0)),
                                    Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 5, left: 5),
                                        child: Text(StringConstants.kg,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelSmall!
                                                .copyWith(
                                                    color: ColorConstants.white,
                                                    height: 0)))
                                  ])
                            ])),
                        Expanded(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                              Text(
                                StringConstants.height,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall!
                                    .copyWith(
                                        color: ColorConstants.white, height: 0),
                              ),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text('183',
                                        style: Theme.of(context)
                                            .textTheme
                                            .displaySmall!
                                            .copyWith(
                                                color: ColorConstants.white,
                                                fontWeight: FontWeight.w600,
                                                height: 0)),
                                    Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 5, left: 5),
                                        child: Text('cm',
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelSmall!
                                                .copyWith(
                                                    color: ColorConstants.white,
                                                    height: 0)))
                                  ])
                            ]))
                      ]))
                ])));
  }
}
