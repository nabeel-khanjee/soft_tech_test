import 'package:softtech_test/src/app/app_export.dart';

class PaymentMethodBottomSheet extends StatefulWidget {
  const PaymentMethodBottomSheet({
    super.key,
    required this.paymentMethods,
  });

  final List<PaymentMethod> paymentMethods;

  @override
  State<PaymentMethodBottomSheet> createState() =>
      _PaymentMethodBottomSheetState();
}

class _PaymentMethodBottomSheetState extends State<PaymentMethodBottomSheet> {
  String? selectedPaymentMethod;

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setState) => Container(
          decoration: BoxDecoration(
              color: lighten(getThemeColor(context), 0.4),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16), topRight: Radius.circular(16))),
          child: Column(children: [
            const SizedBox(height: 25),
            const PaymentHeaderComponent(),
            const SizedBox(height: 10),
            const Divider(color: ColorConstants.grey),
            const SizedBox(height: 10),
            Column(
              children: widget.paymentMethods
                  .asMap()
                  .entries
                  .map((paymentMethod) => Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Container(
                          height: 143,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: ColorConstants.white),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CardDetailComponent(paymentMethod: paymentMethod),
                              Expanded(
                                child: Container(
                                  margin: const EdgeInsets.only(right: 22),
                                  alignment: Alignment.centerRight,
                                  height: 96.6,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            selectedPaymentMethod =
                                                paymentMethod.value.name;
                                          });
                                        },
                                        child: Image.asset(
                                          selectedPaymentMethod ==
                                                  paymentMethod.value.name
                                              ? AssetsConstants.checkIcon
                                              : AssetsConstants
                                                  .unSelectedCheckIcon,
                                          height: 24,
                                          width: 24,
                                        ),
                                      ),
                                      Image.asset(
                                        AssetsConstants.editIcon,
                                        height: 18,
                                        width: 18,
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ))
                  .toList(),
            ),
            PayNowButtonComponent(selectedPaymentMethod: selectedPaymentMethod)
          ])),
    );
  }
}
