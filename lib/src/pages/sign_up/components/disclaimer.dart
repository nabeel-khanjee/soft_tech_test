import 'package:softtech_test/src/app/app_export.dart';

class DisClaimer extends StatefulWidget {
  const DisClaimer({super.key});

  @override
  State<DisClaimer> createState() => _DisClaimerState();
}

class _DisClaimerState extends State<DisClaimer> {
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
                text: 'Disclaimer',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.lightBlue),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    NavigationUtil.push(
                      context,
                      RouteConstants.disclaimerRoute,
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
