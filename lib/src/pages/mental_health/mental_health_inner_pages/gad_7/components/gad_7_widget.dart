import 'package:softtech_test/src/app/app_export.dart';

class GAD7Widget extends StatelessWidget {
  const GAD7Widget({
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
        ScoreSelectionGAD7Widget(question: question),
        const DividerComponent(),
      ],
    );
  }
}
