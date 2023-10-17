import 'package:softtech_test/src/app/app_export.dart';

class SuccessDialog extends StatelessWidget {
  const SuccessDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 408,
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
              Text('Congratulations',
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      fontFamily: FontConstantc.gilroySemiBold)),
              Text('Your Payment is completed',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: darken(getThemeColor(context), 0.3),
                      fontFamily: FontConstantc.gilroyMedium)),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2.5,
                child: BottomNavBarAppointmentBookScreen(
                    text: 'Okay',
                    onTap: () {
                      Navigator.pop(context);
                      AlertDialogComponent.showDialogComponent(
                          alertDialog: const AlertDialog(
                              insetPadding: EdgeInsets.all(16),
                              contentPadding: EdgeInsets.zero,
                              content: BookingConfirmationDialog()),
                          context: context);
                    }),
              )
            ]));
  }
}
