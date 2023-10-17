import 'package:softtech_test/src/app/app_export.dart';

class OptionSelectionFormWidget extends StatelessWidget {
  const OptionSelectionFormWidget({
    super.key,
    required this.question,
  });
  final MapEntry<int, Question> question;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      padding: const EdgeInsets.symmetric(horizontal: 0),
      decoration: BoxDecoration(
          color: getThemeColor(context),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: question.value.options
            .asMap()
            .entries
            .map((option) => Expanded(
                    child: Container(
                  height: 99,
                  decoration: BoxDecoration(
                      border: question.value.options.length != option.key + 1
                          ? getCurrentLanguageDirection()
                              ? Border(
                                  left: BorderSide(
                                      width: 1.5,
                                      color: Theme.of(context)
                                          .scaffoldBackgroundColor),
                                )
                              : Border(
                                  right: BorderSide(
                                      width: 1.5,
                                      color: Theme.of(context)
                                          .scaffoldBackgroundColor))
                          : null),
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      option.value.option,
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(fontFamily: FontConstantc.gilroyMedium),
                      textAlign: TextAlign.center,
                    ),
                  )),
                )))
            .toList(),
      ),
    );
  }
}
