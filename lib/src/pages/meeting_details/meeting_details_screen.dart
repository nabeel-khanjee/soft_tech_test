import 'package:softtech_test/src/app/app_export.dart';

class MeetingDetailsScreen extends StatelessWidget {
  const MeetingDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darken(getThemeColor(context), 0.2),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MeetingDetailsBody(),
              MeetingDetailsStepper(),
            ],
          ),
        ),
      ),
    );
  }
}
