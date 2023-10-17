import 'package:softtech_test/src/app/app_export.dart';

class GAD7AppbarComponent extends StatelessWidget {
  const GAD7AppbarComponent({
    super.key,
    required this.score,
  });
  final int score;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight * 3.9),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppBarcomponent(
              isGradient: false,
              title: StringConstants.gAD7,
              isBackAppBar: true,
              isTitleTowLines: false),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              StringConstants
                  .theLastTwoWeeksHowOftenHaveYouBeenBotheredByAnyOfTheFollowingProblemsUseToIndicateYourAnswer,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  height: 1.5, fontFamily: FontConstantc.gilroyMedium),
            ),
          ),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              height: 54,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: getThemeColor(context),
                  borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        StringConstants.totalScore,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontFamily: FontConstantc.gilroyMedium),
                      ),
                      Text(
                        '$score/21',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(fontFamily: FontConstantc.gilroyMedium),
                      ),
                    ]),
              ))
        ],
      ),
    );
  }
}
