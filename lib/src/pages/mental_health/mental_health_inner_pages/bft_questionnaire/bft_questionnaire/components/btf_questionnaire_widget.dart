import 'package:softtech_test/src/app/app_export.dart';

class BFTQuestionnaireWidget extends StatelessWidget {
  const BFTQuestionnaireWidget({
    super.key,
    required this.question,
  });
  final MapEntry<int, Question> question;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        QuestionFormHeading(questions: question),
        OptionSelectionFormWidget(question: question),
        const SizedBox(height: 5),
        CheckBoxPickerComponent(question: question)
      ],
    );
  }
}
