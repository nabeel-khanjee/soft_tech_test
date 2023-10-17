import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/pages/mental_health/mental_health_inner_pages/gad_7/data_list/gad_7_data_list.dart';

int getScoresGAD7({
  required MapEntry<int, Question> quesion,
}) {
  int getScore = 0;

  for (var indexOfQuestions = 0;
      indexOfQuestions < questionsGAD7.length;
      indexOfQuestions++) {
    for (var indexOfOptions = 0;
        indexOfOptions < questionsGAD7[indexOfQuestions].options.length;
        indexOfOptions++) {
      if (questionsGAD7[indexOfQuestions].options[indexOfOptions].isSelected ==
          true) {
        getScore += indexOfOptions;
      }
    }
  }
  return getScore;
}
