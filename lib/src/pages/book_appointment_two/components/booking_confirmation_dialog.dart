import 'package:softtech_test/src/app/app_export.dart';

class BookingConfirmationDialog extends StatelessWidget {
  const BookingConfirmationDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 558,
        width: 343,
        decoration: BoxDecoration(
          color: lighten(getThemeColor(context), 0.4),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(AssetsConstants.successDialogImage,
                  width: 156, height: 156),
              Text('Booking Confirmation',
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      fontFamily: FontConstantc.gilroySemiBold)),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.5,
                child: Text(
                    'Your Appointment with Dr. Rachel McAdams is confirmed.',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: darken(getThemeColor(context), 0.3),
                        fontFamily: FontConstantc.gilroyMedium)),
              ),
              const BookingDetailRow(keyOf: 'Booking ID', value: '#A78-5669'),
              const BookingDetailRow(keyOf: 'Date', value: '12 Dec, 2023'),
              const BookingDetailRow(keyOf: 'Time', value: '08:30 AM'),
              Row(
                children: [
                  Expanded(
                    child: BottomNavBarAppointmentBookScreen(
                        text: 'Cancel',
                        bgColor: ColorConstants.white,
                        fgColor: Theme.of(context).scaffoldBackgroundColor,
                        onTap: () {
                          Navigator.pop(context);
                          AlertDialogComponent.showDialogComponent(
                              alertDialog: const AlertDialog(
                                  insetPadding: EdgeInsets.all(16),
                                  contentPadding: EdgeInsets.zero,
                                  content: SuccessDialog()),
                              context: context);
                        }),
                  ),
                  Expanded(
                    child: BottomNavBarAppointmentBookScreen(
                        text: 'View',
                        onTap: () {
                          Navigator.pop(context);
                          AlertDialogComponent.showDialogComponent(
                              alertDialog: const AlertDialog(
                                  insetPadding: EdgeInsets.all(16),
                                  contentPadding: EdgeInsets.zero,
                                  content: SuccessDialog()),
                              context: context);
                        }),
                  ),
                ],
              )
            ]));
  }
}
