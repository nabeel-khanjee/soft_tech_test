import 'package:softtech_test/src/domain/model/docotor.dart';

class SharedWithDoctors {
  int doctorId;
  int medicalRecordId;
  Doctor doctor;
  int id;

  SharedWithDoctors(
      {required this.doctorId,
      required this.medicalRecordId,
      required this.doctor,
      required this.id});
}
