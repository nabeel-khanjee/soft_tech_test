import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/pages/billing/components/bottom_nav_bar_page_widget.dart';

class PaymentDetailScreen extends StatelessWidget {
  const PaymentDetailScreen({
    super.key,
    required this.diagnosisCodeList,
    required this.cPTHCPCSCodeList,
  });

  final List<String> diagnosisCodeList;
  final List<CPTHCPCSCode> cPTHCPCSCodeList;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: getThemeColor(context), width: 2),
              color: getThemeStateIsLight()
                  ? darken(getThemeColor(context), 0.3)
                  : lighten(getThemeColor(context), 0.35),
            ),
            child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClaimCompleteDetailsComponent(
                    isPayment: true,
                  ),
                  SizedBox(height: 32),
                  Row(children: [
                    ClaimDetailsComponent(
                        heading: 'Insurance Amount', value: '\$150'),
                    ClaimDetailsComponent(
                        heading: 'Patient Responsibility Type',
                        value: 'Deductible')
                  ]),
                  SizedBox(height: 32),
                  Row(
                    children: [
                      ClaimDetailsComponent(
                          heading: 'Patient Responsibility Amount',
                          value: '\$50'),
                    ],
                  ),
                  SizedBox(height: 32),
                  Row(
                    children: [
                      ClaimDetailsComponent(
                          heading: 'Patient ID', value: '123.1'),
                      ClaimDetailsComponent(
                          heading: 'Paid Amount', value: '\$25'),
                    ],
                  ),
                  SizedBox(height: 32),
                  Row(
                    children: [
                      ClaimDetailsComponent(
                          heading: 'Payment Date', value: '5/20/2023'),
                      ClaimDetailsComponent(
                          heading: 'Paid Through', value: 'Credit Card'),
                    ],
                  ),
                  SizedBox(height: 32),
                  Row(
                    children: [
                      ClaimDetailsComponent(
                          heading: 'Remaining Amount', value: '\$25'),
                    ],
                  ),
                ]),
          ),
          const BottomNavBarPageWidget()
        ],
      ),
    );
  }
}
