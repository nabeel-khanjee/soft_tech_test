import 'package:json_annotation/json_annotation.dart';
import 'package:softtech_test/src/data/dto/doctor_dto.dart';
import 'package:softtech_test/src/data/dto/prescription_dto.dart';

part 'appointment_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  explicitToJson: true,
  fieldRename: FieldRename.snake,
)
class AppointmentDto {
  int? id;
  int? userId;
  int? doctorId;
  int? clinicId;
  int? consultationFee;
  String? reason;
  String? type;
  String? appointmentType;
  String? prefix;
  String? date;
  String? time;
  String? dateTime;
  int? remainingTime;
  String? progress;
  bool? isPaid;
  bool? status;
  PrescriptionDto? prescription;
  DoctorDto? doctor;
  String? prescriptionHere;

  AppointmentDto({
    this.id,
    this.userId,
    this.doctorId,
    this.clinicId,
    this.consultationFee,
    this.reason,
    this.type,
    this.appointmentType,
    this.prefix,
    this.date,
    this.prescriptionHere,
    this.time,
    this.dateTime,
    this.remainingTime,
    this.progress,
    this.isPaid,
    this.status,
    this.prescription,
  });

  factory AppointmentDto.fromJson(Map<String, dynamic> json) =>
      _$AppointmentDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AppointmentDtoToJson(this);
}
