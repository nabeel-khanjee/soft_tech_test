import 'package:softtech_test/src/app/app_export.dart';

class ClaimDetailBottomNavigationBarComponent extends StatelessWidget {
  const ClaimDetailBottomNavigationBarComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        height: 90,
        decoration: BoxDecoration(color: getThemeColor(context)),
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text('Billed Amount'),
            Text('\$200',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontFamily: FontConstantc.gilroyMedium))
          ])
        ]));
  }
}
