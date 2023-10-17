import 'package:softtech_test/src/app/app_export.dart';

class FamilyHealthScreen extends StatelessWidget {
  const FamilyHealthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          RelationAndStatusOfAliveHeading(),
          FamilyMembersListComponent(),
          OtherSpecifiedHeading(),
          OtherFamilyMembersListComponent(),
        ],
      ),
    );
  }
}
