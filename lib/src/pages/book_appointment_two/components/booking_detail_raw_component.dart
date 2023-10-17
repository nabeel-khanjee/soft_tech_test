import 'package:softtech_test/src/app/app_export.dart';

class BookingDetailRow extends StatelessWidget {
  const BookingDetailRow({
    super.key,
    required this.keyOf,
    required this.value,
  });

  final String keyOf;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            keyOf,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: Theme.of(context).scaffoldBackgroundColor,
                fontFamily: FontConstantc.gilroyMedium),
          ),
          Text(
            value,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: Theme.of(context).scaffoldBackgroundColor,
                fontFamily: FontConstantc.gilroyMedium),
          )
        ],
      ),
    );
  }
}
