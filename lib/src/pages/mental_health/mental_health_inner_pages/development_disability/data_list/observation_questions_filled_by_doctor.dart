import 'package:softtech_test/src/app/app_export.dart';

List<Question> developmentDisabilityObservationQuesions = [
  Question(
      isSelected: false,
      question: 'Did this person\'s vacabolary seem limited?',
      options: [
        Option(option: StringConstants.yes),
        Option(option: StringConstants.no),
      ]),
  Question(
      isSelected: false,
      question: 'Did this person have difficulty expressing him/herself?',
      options: [
        Option(option: StringConstants.yes),
        Option(option: StringConstants.no),
      ]),
  Question(
      isSelected: false,
      question:
          'Did this person experience difficulty understanding the questions asked?',
      options: [
        Option(option: StringConstants.yes),
        Option(option: StringConstants.no),
      ]),
];
