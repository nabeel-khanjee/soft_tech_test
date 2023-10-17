import 'package:json_annotation/json_annotation.dart';
import 'package:softtech_test/src/data/dto/appointment_dto.dart';

part 'appointments_history_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  explicitToJson: true,
  fieldRename: FieldRename.snake,
)
class AppointmentsHistoryDto {
  List<AppointmentDto>? pastAppointments;

  AppointmentsHistoryDto({
    this.pastAppointments,
  });

  factory AppointmentsHistoryDto.fromJson(Map<String, dynamic> json) =>
      _$AppointmentsHistoryDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AppointmentsHistoryDtoToJson(this);
}
