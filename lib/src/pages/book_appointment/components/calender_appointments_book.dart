import 'package:softtech_test/src/app/app_export.dart';

class CalenderAppointmentBook extends StatelessWidget {
  const CalenderAppointmentBook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: getThemeStateIsLight()
              ? darken(getThemeColor(context), 0.3)
              : lighten(getThemeColor(context), 0.3)),
      child: CalendarDatePicker(
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2035),
        onDateChanged: (value) {},
      ),
    );
  }
}
