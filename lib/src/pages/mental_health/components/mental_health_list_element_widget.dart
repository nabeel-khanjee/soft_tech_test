import 'package:softtech_test/src/app/app_export.dart';

class MentalHealthListElementWidget extends StatelessWidget {
  const MentalHealthListElementWidget(
      {super.key, required this.mentalHealthListElement});
  final MapEntry<int, MentalHealthListData> mentalHealthListElement;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          NavigationUtil.push(context, mentalHealthListElement.value.route),
      child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          padding: const EdgeInsets.all(6),
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: darken(getThemeColor(context), 0.3)),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(mentalHealthListElement.value.title,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  color: ColorConstants.white,
                                  fontFamily: FontConstantc.gilroyMedium)),
                      const SizedBox(height: 3),
                      Text(mentalHealthListElement.value.date,
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall!
                              .copyWith(
                                  color: lighten(getThemeColor(context), 0.3),
                                  fontFamily: FontConstantc.gilroyMedium))
                    ],
                  ),
                ),
                if (mentalHealthListElement.value.score != null)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          height: 12,
                          width: 12,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: mentalHealthListElement.value.color)),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 46,
                        width: 46,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: lighten(getThemeColor(context), 0.21)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              StringConstants.score,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                      fontFamily: FontConstantc.gilroyMedium,
                                      color:
                                          lighten(getThemeColor(context), 0.4)),
                            ),
                            Text(
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(
                                        fontFamily: FontConstantc.gilroyMedium,
                                        color: lighten(
                                            getThemeColor(context), 0.4)),
                                mentalHealthListElement.value.score.toString())
                          ],
                        ),
                      )
                    ],
                  ),
                if (mentalHealthListElement.value.isIdentified != null)
                  Text(
                    mentalHealthListElement.value.isIdentified!
                        ? StringConstants.identified
                        : StringConstants.unidentified,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: mentalHealthListElement.value.isIdentified!
                            ? ColorConstants.white
                            : ColorConstants.redIndicatorColor,
                        fontFamily: FontConstantc.gilroyMedium),
                  )
              ])),
    );
  }
}
