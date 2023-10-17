import 'package:json_annotation/json_annotation.dart';
import 'package:softtech_test/src/data/dto/prescribed_dto.dart';

part 'prescription_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  explicitToJson: true,
  fieldRename: FieldRename.snake,
)
class PrescriptionDto {
  int? id;
  int? appointmentId;
  String? cosultationNote;
  String? bloodGroup;
  bool? status;
  String? patientConsultationNote;
  List<PrescribedDto>? prescribedMedicine;
  List<PrescribedDto>? prescribedLab;
  String? prescriptionHere;
  PrescriptionDto(
      {this.id,
      this.appointmentId,
      this.cosultationNote,
      this.bloodGroup,
      this.status,
      this.patientConsultationNote,
      this.prescribedMedicine,
      this.prescribedLab,
      this.prescriptionHere});

  factory PrescriptionDto.fromJson(Map<String, dynamic> json) =>
      _$PrescriptionDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PrescriptionDtoToJson(this);
}
