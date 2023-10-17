import 'package:softtech_test/src/app/app_export.dart';

class ScheduledBody extends StatelessWidget {
  const ScheduledBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        Text(
          "Upcoming Appointments",
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 15),
        const DoctorComponent(
          title: "Dr. Rachel McAdams",
          imageUrl: "assets/icon/dr_profile.png",
          callTitle: "Video Call",
        ),
        const SizedBox(height: 10),
        const DoctorComponent(
          title: "Dr. Victoria Patterson",
          imageUrl: "assets/icon/doctor_02.png",
          callTitle: "Video Call",
        ),
      ],
    );
  }
}
