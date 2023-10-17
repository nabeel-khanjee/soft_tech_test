import 'package:softtech_test/src/app/app_export.dart';

class EndSessionDialog extends StatelessWidget {
  const EndSessionDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: darken(getThemeColor(context), 0.3),
      title: Center(
        child: Text(
          'End Session?',
          style: Theme.of(context).textTheme.labelLarge!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      content: const Text(
        'Are you sure you want to end this session now?',
        textAlign: TextAlign.center,
      ),
      actions: <Widget>[
        SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              SizedBox(
                width: 130,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    NavigationUtil.push(
                        context, RouteConstants.meetingDetailsRoute);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: ColorConstants.redIndicatorColor),
                  child: Text(
                    "End Now",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Cancel",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
