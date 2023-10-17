import 'package:softtech_test/src/domain/model/prescribed.dart';

class Prescription {
  String cosultationNote;
  String bloodGroup;
  bool status;
  dynamic patientConsultationNote;
  List<Prescribed> prescribedMedicine;
  List<Prescribed> prescribedLab;
  String prescriptionHere;
  bool isExpanded;

  // List<dynamic> prescribedPrescription;

  Prescription({
    required this.prescriptionHere,
    required this.cosultationNote,
    required this.bloodGroup,
    required this.status,
    required this.patientConsultationNote,
    required this.prescribedMedicine,
    required this.prescribedLab,
    this.isExpanded = false,
    // required this.prescribedPrescription,
  });
}
