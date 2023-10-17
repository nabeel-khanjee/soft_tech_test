import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/pages/family_health_profile/family_health_inner_pages/family_members/data_list/family_members_question_data_list.dart';

class FamilyMembersListComponent extends StatelessWidget {
  const FamilyMembersListComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: questionsFamilyHealth
          .asMap()
          .entries
          .map((questions) => Row(
                children: [
                  Expanded(child: Text(questions.value.question)),
                  Expanded(child: RadioList(questions: questions, isRow: true)),
                ],
              ))
          .toList(),
    );
  }
}
