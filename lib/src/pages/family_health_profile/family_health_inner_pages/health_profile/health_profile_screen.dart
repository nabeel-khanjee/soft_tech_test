import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/pages/family_health_profile/family_health_inner_pages/health_profile/components/expansion_panel_list_component.dart';
import 'package:softtech_test/src/pages/family_health_profile/family_health_inner_pages/health_profile/data_list/diseases_data_list.dart';

class HealthProfileScreen extends StatelessWidget {
  const HealthProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController addDesieseController = TextEditingController();
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: diseases
                .asMap()
                .entries
                .map((disease) => Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child:
                          ExpansionPanelListComponentHealthProfileFamilyMembers(
                              disease: disease),
                    ))
                .toList(),
          ),
          TextFormFieldComponent(
              controller: addDesieseController, label: 'Add Desiese')
        ],
      ),
    );
  }
}
