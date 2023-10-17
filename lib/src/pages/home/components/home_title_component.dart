import 'package:softtech_test/src/app/app_export.dart';

class HomeTitleComponent extends StatelessWidget {
  const HomeTitleComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Hi, ',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: ColorConstants.yellowGolden,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Nabeel',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Text(
          StringConstants.howAreYouFeelingToday,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(),
        ),
      ],
    );
  }
}
