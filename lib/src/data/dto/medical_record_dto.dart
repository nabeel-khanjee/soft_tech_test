import 'package:json_annotation/json_annotation.dart';
import 'package:softtech_test/src/data/dto/medical_record_file_dto.dart';
import 'package:softtech_test/src/data/dto/share_record_with_doctor_dto.dart';

part 'medical_record_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  explicitToJson: true,
  fieldRename: FieldRename.snake,
)
class MedicalRecordsDto {
  int? id;
  int? userId;
  int? prescriptionId;
  String? conditions;
  String? fileName;

  dynamic totalReports;
  int? sharedWithDoctorsCount;
  String? date;
  bool? status;
  String? reportsForUser;
  List<ShareRecordWithDoctorDto>? sharedWithDoctors;
  String? createdAt;
  List<MedicalRecordFileDto>? medicalRecordFiles;
  MedicalRecordsDto({
    this.createdAt,
    this.id,
    this.userId,
    this.fileName,
    this.prescriptionId,
    this.conditions,
    this.totalReports,
    this.sharedWithDoctorsCount,
    this.date,
    this.status,
    this.reportsForUser,
    this.sharedWithDoctors,
    this.medicalRecordFiles,
  });

  factory MedicalRecordsDto.fromJson(Map<String, dynamic> json) =>
      _$MedicalRecordsDtoFromJson(json);

  Map<String, dynamic> toJson() => _$MedicalRecordsDtoToJson(this);
}
