import 'package:softtech_test/src/app/app_export.dart';

class OTPHeader extends StatelessWidget {
  const OTPHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 40),
          const Align(
            alignment: Alignment.centerLeft,
            child: Icon(
              Icons.arrow_back,
              color: ColorConstants.white,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Verify your email',
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Text(
            'Please enter the 4 digit code sent to',
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: ColorConstants.greyText),
          ),
          const SizedBox(height: 5),
          const Text('atriatech@gmail.com'),
        ],
      ),
    );
  }
}
