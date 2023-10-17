import 'package:softtech_test/src/app/app_export.dart';

class PastRecordsBody extends StatelessWidget {
  const PastRecordsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 25),
        Text(
          "14 Mar, 2023",
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
        const SizedBox(height: 10),
        const DoctorComponent(
          title: "Dr. Victoria Patterson",
          imageUrl: "assets/icon/doctor_02.png",
          callTitle: "Video Call",
        ),
        const SizedBox(height: 20),
        Text(
          "6 Mar, 2023",
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        const DoctorComponent(
          title: "Dr. Patricia Palmer",
          imageUrl: "assets/icon/doctor_03.png",
          callTitle: "Voice Call",
        ),
      ],
    );
  }
}
