import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/pages/view_lab_test/components/view_lab_test_body.dart';

class ViewLabTestScreen extends StatelessWidget {
  const ViewLabTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              CustomAppBar(title: "Lab Test"),
              SizedBox(height: 20),
              ViewLabTestBody(),
              // const VisitClinicSearchBar(),
              // const SizedBox(height: 20),
              // VisitClinicCategories(),
              // const SizedBox(height: 20),
              // const VisitClinicShowDoctors(),
            ],
          ),
        ),
      ),
    );
  }
}
