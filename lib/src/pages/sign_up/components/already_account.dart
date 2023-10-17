import 'package:softtech_test/src/app/app_export.dart';

class AlreadyAccount extends StatelessWidget {
  const AlreadyAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          text: TextSpan(
            text: 'Already have an account? ',
            children: [
              TextSpan(
                text: 'Sign In',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.lightBlue),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.pop(context);
                  },
              ),
            ],
          ),
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}
