import 'package:softtech_test/src/app/app_export.dart';

class OTPFields extends StatelessWidget {
  const OTPFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: PinCodeTextField(
        appContext: context,
        length: 4,
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(10),
          inactiveColor: darken(getThemeColor(context), 0.15),
        ),
      ),
    );
  }
}
