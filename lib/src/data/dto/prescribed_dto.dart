import 'package:json_annotation/json_annotation.dart';
import 'package:softtech_test/src/data/dto/prescribed_element_dto.dart';

part 'prescribed_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  explicitToJson: true,
  fieldRename: FieldRename.snake,
)
class PrescribedDto {
  int? id;
  int? prescriptionId;
  int? prescriptionElementId;
  String? numberOfDays;
  int? dosage;
  int? perDay;
  bool? isAfterMeal;
  String? unit;
  String? morning;
  String? evening;
  String? night;
  PrescribedElementDto? prescriptionElement;
  PrescribedDto({
    this.id,
    this.unit,
    this.prescriptionId,
    this.prescriptionElementId,
    this.numberOfDays,
    this.dosage,
    this.perDay,
    this.isAfterMeal,
    this.morning,
    this.evening,
    this.night,
    this.prescriptionElement,
  });

  factory PrescribedDto.fromJson(Map<String, dynamic> json) =>
      _$PrescribedDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PrescribedDtoToJson(this);
}
