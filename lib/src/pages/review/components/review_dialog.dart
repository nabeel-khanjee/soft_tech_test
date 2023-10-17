import 'package:softtech_test/src/app/app_export.dart';

class ReviewDialog extends StatelessWidget {
  const ReviewDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      icon: SvgPicture.asset("assets/icon/review_submit.svg"),
      title: Text(
        "Review Submitted",
        style: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: darken(getThemeColor(context), 0.3),
              fontWeight: FontWeight.bold,
            ),
      ),
      content: Text(
        "Thank you for the feedback",
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: getThemeColor(context),
            ),
      ),
      actions: <Widget>[
        Center(
          child: SizedBox(
            width: 158,
            height: 56,
            child: ElevatedButton(
              onPressed: () {
                NavigationUtil.push(
                  context,
                  RouteConstants.allReviewsRoute,
                );
              },
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
        ),
      ],
    );
  }
}
