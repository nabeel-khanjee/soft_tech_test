import 'package:softtech_test/src/app/app_export.dart';

class BFTQuestionnaireAppBar extends StatelessWidget {
  const BFTQuestionnaireAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight * 3.5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppBarcomponent(
              isGradient: false,
              title: StringConstants.bFTQuestionnaire,
              isBackAppBar: true,
              isTitleTowLines: false),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              StringConstants
                  .noteIfYouAnswerYesForAnEventPleaseAnswerAnyAdditionalQuestionsThatAreListedIfYouAnswerNoForAnEventGoOnToTheNextEvent,
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
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
                    StringConstants.status,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontFamily: FontConstantc.gilroyMedium),
                  ),
                  Text(
                    StringConstants.identified,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontFamily: FontConstantc.gilroyMedium),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
