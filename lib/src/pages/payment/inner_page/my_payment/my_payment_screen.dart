import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/pages/payment/model/my_payment_model.dart';

class MyPaymentsScreen extends StatelessWidget {
  const MyPaymentsScreen({
    super.key,
    required this.myPaymentList,
  });

  final List<MyPayment> myPaymentList;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      Column(
          children: myPaymentList
              .asMap()
              .entries
              .map((myPayment) => Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    padding: const EdgeInsets.only(left: 24),
                    decoration: BoxDecoration(
                        color: getThemeStateIsLight()
                            ? darken(getThemeColor(context), 0.3)
                            : lighten(getThemeColor(context), 0.35),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                            width: 1, color: getThemeColor(context))),
                    height: 120,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            ClaimDetailsComponent(
                                heading: 'Payment ID',
                                value: myPayment.value.claimId),
                            ClaimDetailsComponent(
                                heading: 'Total Amount Paid',
                                value: myPayment.value.totalAmountPaid),
                          ],
                        ),
                        Row(
                          children: [
                            ClaimDetailsComponent(
                                heading: 'Due Amount',
                                value: myPayment.value.dueAmount),
                            ClaimDetailsComponent(
                                heading: 'Action',
                                value: myPayment.value.action),
                          ],
                        ),
                      ],
                    ),
                  ))
              .toList())
    ]));
  }
}
