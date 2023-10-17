import 'package:softtech_test/src/app/app_export.dart';

class TimeStartTimeEndRowComponent extends StatelessWidget {
  const TimeStartTimeEndRowComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          TimeSelectionWidget(
            text: 'Start Time',
          ),
          SizedBox(width: 8),
          TimeSelectionWidget(text: 'End Time'),
        ],
      ),
    );
  }
}
