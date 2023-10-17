import 'package:softtech_test/src/app/app_export.dart';

class BottomNavBarAppointmentBookScreen extends StatelessWidget {
  const BottomNavBarAppointmentBookScreen({
    super.key,
    required this.text,
    required this.onTap,
    this.bgColor,
    this.fgColor,
    this.horizontalPadding = 10,
    this.verticalPadding = 15,
  });
  final String text;
  final VoidCallback onTap;
  final Color? bgColor;
  final Color? fgColor;

  final double horizontalPadding;
  final double verticalPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding, vertical: verticalPadding),
      height: kToolbarHeight + kToolbarHeight / 2,
      child: ElevatedButton(
          style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
              foregroundColor: MaterialStatePropertyAll(fgColor),
              backgroundColor: MaterialStatePropertyAll(bgColor),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)))),
          onPressed: onTap,
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontFamily: FontConstantc.gilroySemiBold, color: fgColor),
          )),
    );
  }
}
