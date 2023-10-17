import 'package:json_annotation/json_annotation.dart';
import 'package:softtech_test/src/data/dto/medical_record_dto.dart';

part 'medical_records_history_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  explicitToJson: true,
  fieldRename: FieldRename.snake,
)
class MedicalRecordsHistoryDto {
  List<MedicalRecordsDto>? medicalRecords;

  MedicalRecordsHistoryDto({
    this.medicalRecords,
  });

  factory MedicalRecordsHistoryDto.fromJson(Map<String, dynamic> json) =>
      _$MedicalRecordsHistoryDtoFromJson(json);

  Map<String, dynamic> toJson() => _$MedicalRecordsHistoryDtoToJson(this);
}
