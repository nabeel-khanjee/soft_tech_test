import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/pages/appointments/book_appointments/components/book_appointments_body.dart';
import 'package:softtech_test/src/pages/home/components/slide_to_action_button_component.dart';

class BookAppointmentsPageView extends StatelessWidget {
  const BookAppointmentsPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: BookAppointmentsBody(),
        ),
        SlideActionBtn(),
      ],
    );
  }
}
