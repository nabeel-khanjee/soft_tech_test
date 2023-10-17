import 'package:softtech_test/src/app/app_export.dart';

class AllEmergenciesScreen extends StatelessWidget {
  const AllEmergenciesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darken(getThemeColor(context), 0.2),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: 20),
                CustomAppBar(title: "All Emergencies"),
                AllEmergenciesSearchBar(),
                AllEmergenciesBody(),
                AllEmergencyButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
