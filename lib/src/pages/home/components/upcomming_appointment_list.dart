import 'package:softtech_test/src/app/app_export.dart';

class UpCommingAppointmentData {
  final String docImage;
  final String dec;
  final String title;

  final String docName;
  final String date;
  final Color decColor;
  final Color titleColor;

  UpCommingAppointmentData(
      {required this.docImage,
      required this.titleColor,
      required this.dec,
      required this.decColor,
      required this.title,
      required this.docName,
      required this.date});
}
