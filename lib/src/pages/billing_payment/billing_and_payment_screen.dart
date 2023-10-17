import 'package:softtech_test/src/app/app_export.dart';

class BillingsAndPaymentScreen extends StatefulWidget {
  const BillingsAndPaymentScreen({
    super.key,
  });

  @override
  State<BillingsAndPaymentScreen> createState() =>
      _BillingsAndPaymentScreenState();
}

class _BillingsAndPaymentScreenState extends State<BillingsAndPaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return IsGradientBackGround(
      appbarText: StringConstants.billings,
      isBackAppBar: false,
      body: MainScaffold(
        body: Container(
            padding: const EdgeInsets.all(10),
            child: const Column(
              children: [
                BillingPaymentExpansionPanel(
                  isBilling: true,
                ),
                SizedBox(
                  height: 20,
                ),
                BillingPaymentExpansionPanel(
                  isBilling: false,
                )
              ],
            )),
        isGradient: true,
      ),
    );
  }
}
