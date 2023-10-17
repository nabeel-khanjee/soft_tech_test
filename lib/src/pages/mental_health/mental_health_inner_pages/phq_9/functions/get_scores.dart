import 'package:softtech_test/src/app/app_export.dart';

int getScores({
  required MapEntry<int, Question> quesion,
}) {
  int getScore = 0;

  for (var indexOfQuestions = 0;
      indexOfQuestions < questionsPHQ7.length;
      indexOfQuestions++) {
    for (var indexOfOptions = 0;
        indexOfOptions < questionsPHQ7[indexOfQuestions].options.length;
        indexOfOptions++) {
      if (questionsPHQ7[indexOfQuestions].options[indexOfOptions].isSelected ==
          true) {
        getScore += indexOfOptions;
      }
    }
  }
  return getScore;
}
