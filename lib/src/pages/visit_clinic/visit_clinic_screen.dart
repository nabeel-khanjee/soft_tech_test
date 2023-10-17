import 'package:softtech_test/src/app/app_export.dart';

class VisitClinicScreen extends StatelessWidget {
  const VisitClinicScreen({super.key});

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
              CustomAppBar(title: "Visit Clinic"),
              SizedBox(height: 20),
              VisitClinicSearchBar(),
              SizedBox(height: 20),
              VisitClinicCategories(),
              SizedBox(height: 20),
              VisitClinicShowDoctors(),
            ],
          ),
        ),
      ),
    );
  }
}
