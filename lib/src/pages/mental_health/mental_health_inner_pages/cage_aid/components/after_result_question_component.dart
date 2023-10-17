import 'package:softtech_test/src/app/app_export.dart';

class AfterResultQuestionComponent extends StatelessWidget {
  const AfterResultQuestionComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: afterResultQuesions
          .asMap()
          .entries
          .map((afterResultQuesions) => Column(
                children: [
                  QuestionHeadingAfterResult(
                      afterResultQuesions: afterResultQuesions),
                  RadioList(isRow: true, questions: afterResultQuesions)
                ],
              ))
          .toList(),
    );
  }
}
