import 'package:equatable/equatable.dart';
import 'package:softtech_test/src/domain/model/last_health_scan.dart';
import 'package:softtech_test/src/domain/model/prescription.dart';
import 'package:softtech_test/src/domain/model/subscription.dart';

class AnimatedDrawer extends Equatable {
  final int healthScans;
  final int totalAppointments;
  final int inPersonAppointments;
  final int virtualAppointments;
  final int instantConsultations;
  final int upComingAppointments;
  final int familyMembersAdded;
  final int totalMedicalRecords;
  final int totalDoctorReviewsGive;
  final LastHealthScan lastHealthScan;
  final Subscription? subscription;
  final Prescription? lastPrescription;
  const AnimatedDrawer(
      {required this.healthScans,
      required this.totalAppointments,
      required this.inPersonAppointments,
      required this.virtualAppointments,
      required this.instantConsultations,
      required this.upComingAppointments,
      required this.familyMembersAdded,
      required this.totalMedicalRecords,
      required this.totalDoctorReviewsGive,
      required this.lastHealthScan,
      this.subscription,
      required this.lastPrescription,
      th});

  @override
  List<Object?> get props => [
        healthScans,
        totalAppointments,
        inPersonAppointments,
        virtualAppointments,
        instantConsultations,
        subscription,
      ];
}
