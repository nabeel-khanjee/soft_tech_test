import 'package:softtech_test/src/app/app_export.dart';

class EmergencyButton extends StatelessWidget {
  const EmergencyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        NavigationUtil.push(
          context,
          RouteConstants.emergencyTypesRoute,
        );
      },
      child: const Image(
        image: AssetImage("assets/images/emergency_button.png"),
      ),
    );
  }
}
