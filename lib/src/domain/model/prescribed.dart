import 'package:softtech_test/src/domain/model/precribed_element.dart';

class Prescribed {
  int id;
  String numberOfDays;
  int dosage;
  int perDay;
  bool isAfterMeal;
  String unit;
  String morning;
  String evening;
  String night;
  PrescribedElement prescribedElement;
  bool isExpanded;
  Prescribed({
    required this.id,
    required this.numberOfDays,
    required this.dosage,
    required this.perDay,
    required this.isAfterMeal,
    required this.unit,
    required this.morning,
    required this.evening,
    required this.night,
    required this.prescribedElement,
    this.isExpanded = false,
  });
}
