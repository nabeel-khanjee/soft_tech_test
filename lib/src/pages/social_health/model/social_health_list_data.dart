class SocialHealthListData {
  final String title;
  final String icon;
  bool isCompleted;
  final String route;
  final List<Question> questions;

  SocialHealthListData(
      {required this.title,
      required this.questions,
      required this.route,
      required this.icon,
      required this.isCompleted});
}

class Question {
  final String question;
  final List<Option> options;
  bool isSelected;
  Question(
      {required this.isSelected,
      required this.question,
      required this.options});
}

class Option {
  final String option;
  bool? isSelected;
  Option({this.isSelected, required this.option});
}
