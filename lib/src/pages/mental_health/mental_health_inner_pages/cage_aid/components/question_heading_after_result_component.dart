import 'package:softtech_test/src/app/app_export.dart';

class QuestionHeadingAfterResult extends StatelessWidget {
  const QuestionHeadingAfterResult({
    super.key,
    required this.afterResultQuesions,
  });
  final MapEntry<int, Question> afterResultQuesions;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Q. ',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontFamily: FontConstantc.gilroyRegular,
                ),
          ),
          Expanded(
            child: Text(
              afterResultQuesions.value.question,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontFamily: FontConstantc.gilroyRegular),
            ),
          ),
        ],
      ),
    );
  }
}
