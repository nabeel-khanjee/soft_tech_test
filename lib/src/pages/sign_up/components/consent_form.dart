import 'package:softtech_test/src/app/app_export.dart';

class ConsentForm extends StatefulWidget {
  const ConsentForm({super.key});

  @override
  State<ConsentForm> createState() => _ConsentFormState();
}

class _ConsentFormState extends State<ConsentForm> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isChecked = !isChecked;
            });
          },
          child: Icon(
            Icons.check_circle,
            color: (isChecked)
                ? getThemeColor(context)
                : darken(getThemeColor(context), 0.25),
          ),
        ),
        RichText(
          text: TextSpan(
            text: '  I agree to the ',
            children: [
              TextSpan(
                text: 'Consent Form',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.lightBlue),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    NavigationUtil.push(
                      context,
                      RouteConstants.consentFormRoute,
                    );
                  },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
