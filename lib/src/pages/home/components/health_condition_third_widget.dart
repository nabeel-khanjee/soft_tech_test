import 'package:softtech_test/src/app/app_export.dart';

class HealthComditionThirdWidget extends StatelessWidget {
  final String icon;
  final String number;
  final String subText;
  final String cardText;
  final Color cardTextColor;
  final bool isReading;
  final Color? iconColor;
  const HealthComditionThirdWidget({
    super.key,
    required this.icon,
    required this.number,
    required this.subText,
    required this.cardText,
    required this.cardTextColor,
    this.isReading = true,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            padding:
                const EdgeInsets.only(top: 10, bottom: 3, right: 5, left: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: getThemeColor(context))),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Image.asset(icon, height: 20, width: 20, color: iconColor),
                    const SizedBox(width: 2),
                    Expanded(
                        child: Text(cardText,
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall!
                                .copyWith(
                                    color: cardTextColor,
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                    overflow: TextOverflow.ellipsis)))
                  ]),
                  !isReading
                      ? subText == StringConstants.mild
                          ? Container(
                              height: 12,
                              width: 12,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: ColorConstants.greenIndicatorColor))
                          : Container(
                              height: 12,
                              width: 12,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: ColorConstants.yellowIndicatorColor))
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                              Text(number,
                                  style: Theme.of(context)
                                      .textTheme
                                      .displaySmall!
                                      .copyWith(fontWeight: FontWeight.w600)),
                              Expanded(
                                  child: Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 6, left: 5),
                                      child: Text(subText,
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelSmall!
                                              .copyWith(
                                                  color:
                                                      ColorConstants.greyText),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis)))
                            ]),
                  if (!isReading)
                    Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(subText,
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall!
                                .copyWith(
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                    overflow: TextOverflow.ellipsis)))
                ])));
  }
}
