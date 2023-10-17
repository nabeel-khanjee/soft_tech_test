import 'package:softtech_test/src/app/app_export.dart';

class MeetingDetailsBody extends StatelessWidget {
  const MeetingDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        const CustomAppBar(title: "Meeting Details"),
        const SizedBox(height: 30),
        Text(
          "Meeting Details",
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        const DoctorComponent(
          title: "Dr. Rachel McAdams",
          imageUrl: "assets/icon/dr_profile.png",
          callTitle: "Video Call",
        ),
      ],
    );
  }
}
