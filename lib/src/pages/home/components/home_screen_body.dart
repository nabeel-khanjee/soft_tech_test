import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/pages/home/components/slide_to_action_button_component.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
        bottomNavigationBar: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: SlideActionBtn(),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(12),
            child: const Column(
              children: [
                SearchCompoentHome(),
                HealthConditionsWidget(),
                UpcommingAppointmentWidgetHome(),
                TopDatedDoctorsWidget()
              ],
            ),
          ),
        ),
        isGradient: false,
        appBar: AppBarcomponent(
            isTitleTowLines: true,
            isGradient: false,
            title: StringConstants.home,
            isBackAppBar: false));
  }
}
