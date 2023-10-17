import 'package:json_annotation/json_annotation.dart';
import 'package:softtech_test/src/data/dto/last_health_scan_dto.dart';
import 'package:softtech_test/src/data/dto/prescription_dto.dart';
import 'package:softtech_test/src/data/dto/subscription_dto.dart';

part 'dashboard_overview_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  explicitToJson: true,
  fieldRename: FieldRename.snake,
)
class DashBoardOverViewDto {
  final int? familyMember;
  final int? healthScans;
  final int? medicalRecords;
  final int? totalReviews;
  final int? totalAppointments;
  final int? inPersonAppointments;
  final int? virtualAppointments;
  final int? instantConsultations;
  final int? totalUpcomingAppointments;
  final int? familyMembers;
  final LastHealthScanDto? lastHealthScan;
  final SubscriptionDto? subscription;
  final PrescriptionDto? lastPrescription;
  const DashBoardOverViewDto({
    this.familyMember,
    this.healthScans,
    this.medicalRecords,
    this.totalReviews,
    this.totalAppointments,
    this.inPersonAppointments,
    this.virtualAppointments,
    this.instantConsultations,
    this.totalUpcomingAppointments,
    this.lastHealthScan,
    this.familyMembers,
    this.subscription,
    this.lastPrescription,
  });

  factory DashBoardOverViewDto.fromJson(Map<String, dynamic> json) =>
      _$DashBoardOverViewDtoFromJson(json);

  Map<String, dynamic> toJson() => _$DashBoardOverViewDtoToJson(this);
}
