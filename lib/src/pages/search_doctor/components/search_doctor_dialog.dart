import 'package:softtech_test/src/app/app_export.dart';

class SearchDoctorDialog extends StatelessWidget {
  const SearchDoctorDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Column(
        children: [
          SvgPicture.asset("assets/icon/access_denied.svg"),
          Text(
            "Access Denied",
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  color: darken(getThemeColor(context), 0.25),
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
      content: Text(
        "You have not taken any appointment from this doctor.",
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: getThemeColor(context),
            ),
      ),
      actions: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 130,
              height: 48,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: getThemeColor(context)),
                child: Text(
                  "Okay",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
