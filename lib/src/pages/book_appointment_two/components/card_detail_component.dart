import 'package:softtech_test/src/app/app_export.dart';

class CardDetailComponent extends StatelessWidget {
  const CardDetailComponent({
    super.key,
    required this.paymentMethod,
  });
  final MapEntry<int, PaymentMethod> paymentMethod;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        height: 96.6,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              paymentMethod.value.paymentImage,
              height: 23,
            ),
            Text(
              paymentMethod.value.cardNumber,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: ColorConstants.grey),
            ),
            Text('Added ${paymentMethod.value.date}',
                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      color: ColorConstants.greyText,
                    ))
          ],
        ),
      ),
    );
  }
}
