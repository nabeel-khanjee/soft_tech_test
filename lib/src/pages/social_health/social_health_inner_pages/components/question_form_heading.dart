import 'package:softtech_test/src/app/app_export.dart';

class QuestionFormHeading extends StatelessWidget {
  const QuestionFormHeading({
    super.key,
    required this.questions,
  });
  final MapEntry<int, Question> questions;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('${questions.key + 1}. ',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 16, fontFamily: FontConstantc.gilroySemiBold)),
          Expanded(
            child: Text(questions.value.question,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 16, fontFamily: FontConstantc.gilroySemiBold)),
          ),
        ],
      ),
    );
  }
}
