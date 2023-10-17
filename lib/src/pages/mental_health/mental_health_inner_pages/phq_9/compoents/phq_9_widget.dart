import 'package:softtech_test/src/app/app_export.dart';

class PHQ9Widget extends StatelessWidget {
  const PHQ9Widget({
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
        ScoreSelectionWidget(question: question),
        const DividerComponent(),
      ],
    );
  }
}
