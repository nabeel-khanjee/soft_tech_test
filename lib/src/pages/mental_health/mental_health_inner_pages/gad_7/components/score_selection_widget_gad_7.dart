import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/pages/mental_health/mental_health_inner_pages/gad_7/cubit/gad_7_cubit.dart';
import 'package:softtech_test/src/pages/mental_health/mental_health_inner_pages/gad_7/functions/get_scores_gad_7.dart';

class ScoreSelectionGAD7Widget extends StatelessWidget {
  const ScoreSelectionGAD7Widget({super.key, required this.question});
  final MapEntry<int, Question> question;

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<GAD7Cubit>(context)
        .updateIndex(score: getScoresGAD7(quesion: question));
    return Container(
        height: 98,
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        padding: const EdgeInsets.symmetric(horizontal: 0),
        decoration: BoxDecoration(
            border: Border.all(color: getThemeColor(context), width: 1.5),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: question.value.options
                .asMap()
                .entries
                .map((option) => Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                            border:
                                question.value.options.length != option.key + 1
                                    ? Border(
                                        right: BorderSide(
                                            color: getThemeColor(context),
                                            width: 1.5))
                                    : null),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  child: Container(
                                      decoration: BoxDecoration(
                                          color: getThemeColor(context)),
                                      child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 12.0),
                                          child: Center(
                                              child: Text(option.value.option,
                                                  textAlign: TextAlign.center,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .labelSmall!
                                                      .copyWith(
                                                          fontFamily: option
                                                                      .value
                                                                      .isSelected ==
                                                                  true
                                                              ? FontConstantc
                                                                  .gilroyBold
                                                              : FontConstantc
                                                                  .gilroyMedium)))))),
                              Expanded(
                                  child: InkWell(
                                      onTap: () {
                                        for (var element
                                            in question.value.options) {
                                          element.option == option.value.option
                                              ? element.isSelected = true
                                              : element.isSelected = false;
                                        }
                                        BlocProvider.of<GAD7Cubit>(context)
                                            .updateIndex(
                                                score: getScoresGAD7(
                                                    quesion: question));
                                      },
                                      child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft: option.key == 0
                                                      ? const Radius.circular(
                                                          10)
                                                      : const Radius.circular(
                                                          0),
                                                  bottomRight: option.key ==
                                                          question.value.options
                                                                  .length -
                                                              1
                                                      ? const Radius.circular(
                                                          10)
                                                      : const Radius.circular(
                                                          0)),
                                              color: option.value.isSelected == true
                                                  ? darken(
                                                      getThemeColor(context), 0.2)
                                                  : darken(getThemeColor(context), 0.3)),
                                          child: Center(child: Padding(padding: const EdgeInsets.all(0.0), child: Text(option.key.toString(), style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontFamily: option.value.isSelected == true ? FontConstantc.gilroyBold : FontConstantc.gilroyRegular)))))))
                            ]))))
                .toList()));
  }
}
