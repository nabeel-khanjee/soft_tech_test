import 'package:json_annotation/json_annotation.dart';
import 'package:softtech_test/src/data/dto/doctor_dto.dart';

part 'share_record_with_doctor_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  explicitToJson: true,
  fieldRename: FieldRename.snake,
)
class ShareRecordWithDoctorDto {
  int? doctorId;
  int? medicalRecordId;
  DoctorDto? doctor;
  int? id;
  ShareRecordWithDoctorDto(
      {this.doctorId, this.medicalRecordId, this.doctor, this.id});

  factory ShareRecordWithDoctorDto.fromJson(Map<String, dynamic> json) =>
      _$ShareRecordWithDoctorDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ShareRecordWithDoctorDtoToJson(this);
}
