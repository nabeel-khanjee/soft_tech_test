import 'package:json_annotation/json_annotation.dart';
import 'package:softtech_test/src/data/dto/last_health_scan_dto.dart';

part 'sehat_scan_history_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  explicitToJson: true,
  fieldRename: FieldRename.snake,
)
class SehatScanHistoryDto {
  List<LastHealthScanDto>? healthScans;

  SehatScanHistoryDto({
    this.healthScans,
  });

  factory SehatScanHistoryDto.fromJson(Map<String, dynamic> json) =>
      _$SehatScanHistoryDtoFromJson(json);

  Map<String, dynamic> toJson() => _$SehatScanHistoryDtoToJson(this);
}
