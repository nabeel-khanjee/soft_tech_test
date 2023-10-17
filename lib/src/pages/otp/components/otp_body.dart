import 'package:softtech_test/src/app/app_export.dart';

class OTPBody extends StatelessWidget {
  const OTPBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 40),
        SvgPicture.asset("assets/icon/otp_letter.svg"),
        const SizedBox(height: 30),
        const OTPFields(),
        const SizedBox(height: 10),
        const OTPButton(),
      ],
    );
  }
}
