import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/pages/search_doctor/components/search_doctor_categories.dart';
import 'package:softtech_test/src/pages/search_doctor/components/search_doctor_search_bar.dart';
import 'package:softtech_test/src/pages/search_doctor/components/search_doctor_show_doctors.dart';

class SearchDoctorScreen extends StatelessWidget {
  const SearchDoctorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SizedBox(height: 20),
              CustomAppBar(title: "Search Doctor"),
              SizedBox(height: 20),
              SearchDoctorSearchBar(),
              SizedBox(height: 20),
              SearchDoctorCategories(),
              SizedBox(height: 20),
              SearchDoctorShowDoctors(),
            ],
          ),
        ),
      ),
    );
  }
}
