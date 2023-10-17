import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/pages/view_prescription/components/view_prescription_body.dart';

class ViewPrescriptionScreen extends StatelessWidget {
  const ViewPrescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SizedBox(height: 20),
              CustomAppBar(title: "Prescriptions"),
              SizedBox(height: 20),
              ViewPrescriptionBody(),

              // SizedBox(height: 20),
              // PrescriptionBody(),
            ],
          ),
        ),
      ),
    );
  }
}
