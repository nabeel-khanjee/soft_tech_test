import 'package:softtech_test/src/app/app_export.dart';

class OtherSpecifiedHeading extends StatelessWidget {
  const OtherSpecifiedHeading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Other',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontFamily: FontConstantc.gilroySemiBold),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 2.0),
            child: Text(
              '(Specify)',
              style: Theme.of(context)
                  .textTheme
                  .labelSmall!
                  .copyWith(fontFamily: FontConstantc.gilroySemiBold),
            ),
          ),
        ],
      ),
    );
  }
}
