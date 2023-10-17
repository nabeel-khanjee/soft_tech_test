import 'package:softtech_test/src/app/app_export.dart';

class EmergencyScreen extends StatelessWidget {
  const EmergencyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darken(getThemeColor(context), 0.2),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 20),
              CustomAppBar(title: "Emergency"),
              Expanded(
                flex: 1,
                child: EmergencyDetails(),
              ),
              Expanded(
                flex: 2,
                child: EmergencyButton(),
              ),
              Expanded(
                flex: 2,
                child: EmergencyAddress(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
