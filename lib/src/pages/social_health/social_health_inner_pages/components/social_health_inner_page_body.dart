import 'package:softtech_test/src/app/app_export.dart';

class SocialHealthInnerPageBody extends StatelessWidget {
  const SocialHealthInnerPageBody({
    super.key,
    required this.element,
  });

  final MapEntry<int, SocialHealthListData> element;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: element.value.questions
              .asMap()
              .entries
              .map((questions) =>
                  SocialHealthRadioListQuesion(questions: questions))
              .toList()),
    );
  }
}

class SocialHealthRadioListQuesion extends StatelessWidget {
  const SocialHealthRadioListQuesion({
    super.key,
    required this.questions,
  });
  final MapEntry<int, Question> questions;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionFormHeading(questions: questions),
        RadioList(isRow: false, questions: questions)
      ],
    );
  }
}
