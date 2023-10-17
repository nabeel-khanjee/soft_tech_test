import 'package:softtech_test/src/app/app_export.dart';

class EmergencyTypesScreen extends StatelessWidget {
  const EmergencyTypesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darken(getThemeColor(context), 0.2),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              const CustomAppBar(title: "Emergency"),
              const Expanded(
                flex: 1,
                child: EmergencyTypesDetails(),
              ),
              const Expanded(
                flex: 2,
                child: EmergencyTypesButtons(),
              ),
              Expanded(
                flex: 1,
                child: Container(),
              ),
              const Expanded(
                flex: 1,
                child: EmergencyTypesDoctor(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
