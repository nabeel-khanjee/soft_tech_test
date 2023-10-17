import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/pages/appointments/book_appointments/components/book_appointments_component.dart';

class BookAppointmentsBody extends StatelessWidget {
  const BookAppointmentsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        Text(
          StringConstants.clinicalBookings,
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 15),
        GestureDetector(
          onTap: () {
            NavigationUtil.push(
              context,
              RouteConstants.visitClinicRoute,
            );
          },
          child: const BookAppointmentComponent(
            imageUrl: "assets/icon/doctor.svg",
            title: "Office Visit",
            subTitle: "Face to Face Appointment",
          ),
        ),
        const SizedBox(height: 10),
        GestureDetector(
          onTap: () {
            NavigationUtil.push(
              context,
              RouteConstants.labTestRoute,
            );
          },
          child: const BookAppointmentComponent(
            imageUrl: "assets/icon/microscope.svg",
            title: "Diagnostic Test",
            subTitle: "Visit Lab for Test",
          ),
        ),
        const SizedBox(height: 15),
        Text(
          StringConstants.telehealthAppointments,
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 15),
        const DoctorComponent(
          title: "Dr. Rachel McAdams",
          imageUrl: "assets/icon/dr_profile.png",
          callTitle: "Voice Call",
        ),
      ],
    );
  }
}
