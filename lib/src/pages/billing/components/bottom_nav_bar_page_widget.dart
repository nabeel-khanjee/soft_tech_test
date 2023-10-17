import 'package:softtech_test/src/app/app_export.dart';

class BottomNavBarPageWidget extends StatelessWidget {
  const BottomNavBarPageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const PreviousButton(),
        Expanded(
          child: Container(),
        ),
        const PageNumberWidget(),
        Expanded(
          child: Container(),
        ),
        const NextWidget()
      ],
    );
  }
}
