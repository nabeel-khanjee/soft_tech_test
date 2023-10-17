import 'package:softtech_test/src/app/app_export.dart';

class ConsentFormTermsConditions extends StatefulWidget {
  const ConsentFormTermsConditions({super.key});

  @override
  State<ConsentFormTermsConditions> createState() =>
      _ConsentFormTermsConditionsState();
}

class _ConsentFormTermsConditionsState
    extends State<ConsentFormTermsConditions> {
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
                text: 'Terms & Conditions',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.lightBlue),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    NavigationUtil.push(
                      context,
                      RouteConstants.termsConditionsRoute,
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
