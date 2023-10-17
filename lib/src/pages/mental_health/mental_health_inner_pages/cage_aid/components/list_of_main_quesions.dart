import 'package:softtech_test/src/app/app_export.dart';

class ListOfMainQuestions extends StatelessWidget {
  const ListOfMainQuestions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: quesions
          .asMap()
          .entries
          .map((question) => SocialHealthRadioListQuesion(questions: question))
          .toList(),
    );
  }
}
