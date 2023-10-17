import 'package:softtech_test/src/app/app_export.dart';

class ClaimCompleteDetailsComponent extends StatelessWidget {
  const ClaimCompleteDetailsComponent({
    super.key,
    required this.isPayment,
  });
  final bool isPayment;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      ClaimDetailsComponent(
          heading: isPayment ? 'Payment ID' : 'Claim ID', value: '368 DX 589'),
      const ClaimDetailsComponent(
          heading: 'Date of Service (DOS)', value: '04/16/2023')
    ]);
  }
}
