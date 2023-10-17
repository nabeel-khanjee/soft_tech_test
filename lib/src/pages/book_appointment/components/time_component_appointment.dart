import 'package:softtech_test/src/app/app_export.dart';

class TimeComponentAppointment extends StatelessWidget {
  const TimeComponentAppointment({
    super.key,
    required this.time,
  });
  final MapEntry<int, int> time;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11),
          color: selectedTimeAppointment == time.value
              ? getThemeColor(navigationService!.navigatorKey.currentContext!)
              : getThemeStateIsLight()
                  ? darken(getThemeColor(context), 0.3)
                  : lighten(getThemeColor(context), 0.3)),
      margin: const EdgeInsets.all(5),
      child: SizedBox(
        width: MediaQuery.of(navigationService!.navigatorKey.currentContext!)
                .size
                .width /
            3.3,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (time.value < 43200)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text((time.value / 60 / 60)
                        .toString()
                        .split('.0')
                        .join(':00')
                        .split('.5')
                        .join(':30')),
                    const Text(' AM')
                  ],
                ),
              )
            else
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text((time.value / 60 / 60)
                        .toString()
                        .split('.0')
                        .join(':00')
                        .split('.5')
                        .join(':30')),
                    const Text(' PM')
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
