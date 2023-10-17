import 'package:softtech_test/src/app/app_export.dart';

class MentalHealthListData {
  final String title;
  final String date;
  final int? score;
  final String route;
  final bool? isIdentified;
  final Color? color;

  MentalHealthListData({
    required this.route,
    required this.title,
    required this.date,
    this.score,
    this.isIdentified,
    this.color,
  });
}
