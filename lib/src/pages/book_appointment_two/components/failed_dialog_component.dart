import 'package:softtech_test/src/app/app_export.dart';

class FailedDialog extends StatelessWidget {
  const FailedDialog({
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
              Image.asset(AssetsConstants.failedDialogImage,
                  width: 156, height: 156),
              Text('Payment Failed',
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      fontFamily: FontConstantc.gilroySemiBold)),
              Text('Your Payment is not completed',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: darken(getThemeColor(context), 0.3),
                      fontFamily: FontConstantc.gilroyMedium)),
              Row(
                children: [
                  Expanded(
                    child: BottomNavBarAppointmentBookScreen(
                        bgColor: ColorConstants.white,
                        fgColor: Theme.of(context).scaffoldBackgroundColor,
                        text: 'Cancel',
                        onTap: () {}),
                  ),
                  Expanded(
                    child: BottomNavBarAppointmentBookScreen(
                        text: 'Try Again', onTap: () {}),
                  )
                ],
              )
            ]));
  }
}
