import 'package:softtech_test/src/app/app_export.dart';

class PayNowButtonComponent extends StatelessWidget {
  const PayNowButtonComponent({
    super.key,
    required this.selectedPaymentMethod,
  });

  final String? selectedPaymentMethod;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: BottomNavBarAppointmentBookScreen(
        text: 'Pay Now',
        fgColor: ColorConstants.white,
        onTap: () {
          if (selectedPaymentMethod == 'Visa') {
            AlertDialogComponent.showDialogComponent(
                alertDialog: const AlertDialog(
                    insetPadding: EdgeInsets.all(16),
                    contentPadding: EdgeInsets.zero,
                    content: SuccessDialog()),
                context: context);
          } else if (selectedPaymentMethod == 'MasterCard') {
            AlertDialogComponent.showDialogComponent(
                alertDialog: const AlertDialog(
                  insetPadding: EdgeInsets.all(16),
                  contentPadding: EdgeInsets.zero,
                  content: FailedDialog(),
                ),
                context: context);
          } else {
            ToastComponent3(context)
                .showToast(context, 'Please select payment method');
          }
        },
      ),
    );
  }
}
