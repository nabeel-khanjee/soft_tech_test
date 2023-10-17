import 'package:softtech_test/src/app/app_export.dart';

class BFTQuestionnaireScreen extends StatelessWidget {
  const BFTQuestionnaireScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Question> questions = [
      Question(
          isSelected: false,
          question: StringConstants
              .haveYouEverServedInAWarZoneOrHaveYouEverServedInANoncombatJobThatExposedYouToWarRelatedCasualties,
          options: [
            Option(option: StringConstants.hasThisEverHappenedToYou),
            Option(
                option: StringConstants
                    .ifTheEventHappenedDidYouThinkYourLifeWasInDangerOrYouMightBeSeriouslyInjured),
            Option(
                option:
                    StringConstants.ifTheEventHappenedWereYouSeriouslyInjured)
          ]),
      Question(
          isSelected: false,
          question: StringConstants
              .haveYouEverBeenInASeriousCarAccidentOrASeriousAccidentAtWorkOrSomewhereElse,
          options: [
            Option(option: StringConstants.hasThisEverHappenedToYou),
            Option(
                option: StringConstants
                    .ifTheEventHappenedDidYouThinkYourLifeWasInDangerOrYouMightBeSeriouslyInjured),
            Option(
                option:
                    StringConstants.ifTheEventHappenedWereYouSeriouslyInjured)
          ]),
      Question(
          isSelected: false,
          question: StringConstants
              .haveYouEverBeenInAMajorNaturalOrTechnologicalDisaster,
          options: [
            Option(option: StringConstants.hasThisEverHappenedToYou),
            Option(
                option: StringConstants
                    .ifTheEventHappenedDidYouThinkYourLifeWasInDangerOrYouMightBeSeriouslyInjured),
            Option(
                option:
                    StringConstants.ifTheEventHappenedWereYouSeriouslyInjured)
          ]),
    ];
    return MainScaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: questions
              .asMap()
              .entries
              .map((question) => BFTQuestionnaireWidget(question: question))
              .toList(),
        ),
      ),
      isGradient: false,
      preferredSizeAppBar: kToolbarHeight * 3.5,
      appBar: const BFTQuestionnaireAppBar(),
    );
  }
}
