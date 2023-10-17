import 'package:softtech_test/src/domain/model/docotor.dart';
import 'package:softtech_test/src/domain/model/prescription.dart';

class Appointment {
  int id;
  int userId;
  int doctorId;
  int consultationFee;
  String type;
  String? appointmentType;
  String prefix;
  String date;
  String time;
  int remainingTime;
  String progress;
  bool isPaid;
  bool status;
  Prescription prescription;
  Doctor doctor;
  String reason;
  String prescriptionHere;
  bool isExpandalbe;

  Appointment({
    required this.prescriptionHere,
    required this.id,
    required this.userId,
    required this.doctorId,
    required this.consultationFee,
    this.appointmentType,
    required this.reason,
    required this.type,
    required this.prefix,
    required this.date,
    required this.time,
    required this.remainingTime,
    required this.progress,
    required this.isPaid,
    required this.status,
    required this.prescription,
    required this.doctor,
    this.isExpandalbe = false,
  });
}
