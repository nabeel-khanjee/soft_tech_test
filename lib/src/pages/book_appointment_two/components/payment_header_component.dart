import 'package:softtech_test/src/app/app_export.dart';

class PaymentHeaderComponent extends StatelessWidget {
  const PaymentHeaderComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Payment Details",
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: darken(getThemeColor(context), 0.25),
                  fontWeight: FontWeight.bold,
                ),
          ),
          SvgPicture.asset("assets/icon/cross.svg"),
        ],
      ),
    );
  }
}
