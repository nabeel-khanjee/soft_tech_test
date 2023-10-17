import 'package:softtech_test/src/app/app_export.dart';

class CheckBoxListData {
  bool isSelected;
  String name;

  CheckBoxListData(this.isSelected, this.name);
}

class CageAidScreen extends StatelessWidget {
  const CageAidScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CheckBoxListTileComponent(
                textStyle: Theme.of(context).textTheme.bodySmall!,
                checkBoxListData: cageAidCheckBoxList),
            const DividerComponent(),
            const ListOfMainQuestions(),
            const BottomResultIdentifierWidget()
          ],
        ),
      ),
      isGradient: false,
      appBar: AppBarcomponent(
          isGradient: false,
          title: StringConstants.cageAid,
          isBackAppBar: true,
          isTitleTowLines: false),
    );
  }
}
