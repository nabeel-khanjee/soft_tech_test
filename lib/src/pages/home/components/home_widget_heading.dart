import 'package:softtech_test/src/app/app_export.dart';

class HomeWidgetHeading extends StatelessWidget {
  final String title;
  final bool isSeeAll;
  final double bottonPadding;
  final double topPadding;

  const HomeWidgetHeading({
    super.key,
    required this.title,
    required this.isSeeAll,
    required this.bottonPadding,
    required this.topPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: bottonPadding, top: topPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          if (isSeeAll)
            Text(
              StringConstants.seeAll,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: ColorConstants.greyText),
            )
        ],
      ),
    );
  }
}
