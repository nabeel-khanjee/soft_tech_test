import 'package:softtech_test/src/app/app_export.dart';

class PrescriptionScreen extends StatelessWidget {
  const PrescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SizedBox(height: 20),
              CustomAppBar(title: "Prescription"),
              SizedBox(height: 20),
              PrescriptionSearchBar(),
              SizedBox(height: 20),
              PrescriptionBody(),
            ],
          ),
        ),
      ),
    );
  }
}
