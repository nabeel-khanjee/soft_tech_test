import 'package:softtech_test/src/domain/model/medical_record_file.dart';
import 'package:softtech_test/src/domain/model/shared_with_doctors.dart';

class MedicalRecords {
  int id;
  int userId;
  int prescriptionId;
  String conditions;
  String fileName;
  bool checkBoxValue;
  String totalReports;
  int sharedWithDoctorsCount;
  String reportsForUser;
  String date;
  bool status;
  bool isExpanded;
  List<SharedWithDoctors> sharedWithDoctors;
  String createdAt;
  List<MedicalRecordFile> medicalRecordFiles;
  MedicalRecords({
    required this.createdAt,
    required this.id,
    required this.fileName,
    required this.userId,
    required this.prescriptionId,
    required this.conditions,
    required this.checkBoxValue,
    required this.totalReports,
    required this.sharedWithDoctorsCount,
    required this.date,
    required this.status,
    this.isExpanded = false,
    required this.reportsForUser,
    required this.sharedWithDoctors,
    required this.medicalRecordFiles,
  });

  @override
  String toString() {
    return 'MedicalRecords{id: $id, userId: $userId, prescriptionId: $prescriptionId, conditions: $conditions, fileName: $fileName, checkBoxValue: $checkBoxValue, totalReports: $totalReports, sharedWithDoctorsCount: $sharedWithDoctorsCount, reportsForUser: $reportsForUser, date: $date, status: $status, isExpanded: $isExpanded, sharedWithDoctors: $sharedWithDoctors, medicalRecordFiles: $medicalRecordFiles,createdAt:$createdAt}';
  }
}
