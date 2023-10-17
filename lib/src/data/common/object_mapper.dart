import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:logger/logger.dart';
import 'package:softtech_test/src/data/dto/appointment_dto.dart';
import 'package:softtech_test/src/data/dto/appointments_history_dto.dart';
import 'package:softtech_test/src/data/dto/base_response_dto.dart';
import 'package:softtech_test/src/data/dto/dashboard_overview_dto.dart';
import 'package:softtech_test/src/data/dto/data_list_dto.dart';
import 'package:softtech_test/src/data/dto/doctor_dto.dart';
import 'package:softtech_test/src/data/dto/error_dto.dart';
import 'package:softtech_test/src/data/dto/last_health_scan_dto.dart';
import 'package:softtech_test/src/data/dto/medical_record_dto.dart';
import 'package:softtech_test/src/data/dto/medical_record_file_dto.dart';
import 'package:softtech_test/src/data/dto/medical_records_history_dto.dart';
import 'package:softtech_test/src/data/dto/package_dto.dart';
import 'package:softtech_test/src/data/dto/prescribed_dto.dart';
import 'package:softtech_test/src/data/dto/prescribed_element_dto.dart';
import 'package:softtech_test/src/data/dto/prescription_dto.dart';
import 'package:softtech_test/src/data/dto/product_dto.dart';
import 'package:softtech_test/src/data/dto/sehat_scan_history_dto.dart';
import 'package:softtech_test/src/data/dto/share_record_with_doctor_dto.dart';
import 'package:softtech_test/src/data/dto/subscription_dto.dart';
import 'package:softtech_test/src/data/dto/token_dto.dart';
import 'package:softtech_test/src/domain/domain.dart';
import 'package:softtech_test/src/domain/extension/let_extension.dart';
import 'package:softtech_test/src/domain/extension/list_extension.dart';
import 'package:softtech_test/src/domain/model/appointment.dart';
import 'package:softtech_test/src/domain/model/data_list.dart';
import 'package:softtech_test/src/domain/model/docotor.dart';
import 'package:softtech_test/src/domain/model/medical_record_file.dart';
import 'package:softtech_test/src/domain/model/medical_records.dart';
import 'package:softtech_test/src/domain/model/package.dart';
import 'package:softtech_test/src/domain/model/precribed_element.dart';
import 'package:softtech_test/src/domain/model/prescribed.dart';
import 'package:softtech_test/src/domain/model/prescription.dart';
import 'package:softtech_test/src/domain/model/shared_with_doctors.dart';
import 'package:softtech_test/src/domain/model/subscription.dart';
import 'package:softtech_test/src/domain/status/readings_status.dart';

class ObjectMapper {
  final Logger logger;

  ///
  /// Readings Rate status
  ///
  static const String _low = 'low';
  static const String _high = 'high';
  static const String _normal = 'normal';

  const ObjectMapper({required this.logger});

  AnimatedDrawer toDashboardOverview(
      BaseResponseDto<DashBoardOverViewDto> dto) {
    final sehatScans = dto.data?.healthScans ?? 0;
    final lastPrescription = dto.data?.lastPrescription;
    final totalUpcomingAppointments = dto.data?.totalUpcomingAppointments ?? 0;
    final inPersonAppointments = dto.data?.inPersonAppointments ?? 0;
    final virtualAppointment = dto.data?.inPersonAppointments ?? 0;
    final instantConsultation = dto.data?.instantConsultations ?? 0;
    final totalAppointments = dto.data?.totalAppointments ?? 0;
    final familyMembersAdded = dto.data?.familyMembers ?? 0;
    final totalMedicalRecords = dto.data?.medicalRecords ?? 0;
    final totalDoctorReviewsGiven = dto.data?.totalReviews ?? 0;
    final lastScanReport = toLastScan(dto.data?.lastHealthScan);
    final SubscriptionDto? subscription = dto.data?.subscription;
    return AnimatedDrawer(
      healthScans: sehatScans,
      instantConsultations: instantConsultation,
      totalAppointments: totalAppointments,
      inPersonAppointments: inPersonAppointments,
      virtualAppointments: virtualAppointment,
      lastHealthScan: lastScanReport,
      upComingAppointments: totalUpcomingAppointments,
      familyMembersAdded: familyMembersAdded,
      totalMedicalRecords: totalMedicalRecords,
      totalDoctorReviewsGive: totalDoctorReviewsGiven,
      subscription:
          subscription == null ? null : toSubscription(dto.data?.subscription),
      lastPrescription: toPrescription(lastPrescription),
    );
  }

  LastHealthScan toLastScan(LastHealthScanDto? dto) {
    return LastHealthScan(
      id: dto?.id ?? 0,
      stressLevel: dto?.stressLevel ?? "",
      stressLevelValue: dto?.stressLevelValue ?? "",
      stressLevelColor: dto?.stressLevelColor ?? "",
      sehatScore: dto?.sehatScaore ?? 0,
      date: dto?.date ?? '',
      bloodPressure: dto?.bloodPressure ?? '',
      bloodPressureValue: dto?.bloodPressureValue ?? '',
      bloodPressureColor: dto?.bloodPressureColor ?? '',
      heartRate: dto?.heartRate ?? '',
      heartRateValue: dto?.heartRateValue ?? '',
      heartRateColor: dto?.heartRateColor ?? '',
      respiratoryRate: dto?.respiratoryRate ?? '',
      respiratoryRateValue: dto?.respiratoryRateValue ?? '',
      respiratoryRateColor: dto?.respiratoryRateColor ?? '',
      sdnn: dto?.sdnn ?? '',
      sdnnValue: dto?.sdnnValue ?? '',
      sdnnColor: dto?.spo2Color ?? '',
      spo2: dto?.spo2 ?? '',
      spo2Value: dto?.spo2Value ?? '',
      spo2Color: dto?.spo2Color ?? '',
      score: dto?.score ?? '',
      readingStatus: toReadingStatus(_normal),
      time: dto?.dateTime ?? '',
    );
  }

  Subscription toSubscription(SubscriptionDto? dto) {
    return Subscription(
      remainingDays: dto?.remainingDays ?? 0,
      startDate: dto?.startDate ?? '',
      endDate: dto?.endDate ?? '',
      package: toPackage(dto?.package),
      isYearly: dto?.isYearly ?? 0,
    );
  }

  Package toPackage(PackageDto? dto) {
    return Package(
      discountedYearlyPrice: dto?.discountedYearlyPrice ?? 0,
      name: dto?.name ?? '',
      colorCode: dto?.colorCode ?? '',
      price: dto?.price ?? 0,
      priceYearly: dto?.priceYearly ?? 0,
      discountedPrice: dto?.discountedPrice ?? 0,
    );
  }

  List<LastHealthScan> toSehatScanHistory(
      BaseResponseDto<SehatScanHistoryDto> dto) {
    return dto.data?.healthScans?.map((e) => toLastScan(e)).toList() ?? [];
  }

  ReadingsStatus toReadingStatus(String status) {
    String statusResult = status.toLowerCase();
    ReadingsStatus readingsStatus = const ReadingsStatus.normal();
    if (statusResult == _high) {
      readingsStatus = const ReadingsStatus.high();
    } else if (statusResult == _normal) {
      readingsStatus = const ReadingsStatus.normal();
    } else if (statusResult == _low) {
      readingsStatus = const ReadingsStatus.low();
    }
    return readingsStatus;
  }

  List<Appointment> toPastAppointments(
      BaseResponseDto<AppointmentsHistoryDto>? dto) {
    return dto?.data?.pastAppointments
            ?.map((e) => toAppointments(e))
            .toList() ??
        [];
  }

  Appointment toAppointments(AppointmentDto dto) {
    final id = dto.id.throwOnNull('Appointment id must not be null');
    final userId = dto.userId.throwOnNull('User id must not be null');
    final doctorId = dto.doctorId.throwOnNull('User id must not be null');
    final prescription = dto.prescription;
    final doctor = dto.doctor.throwOnNull('Doctor must not be null');
    return Appointment(
      prescriptionHere: dto.prescriptionHere ?? "",
      date: dto.date ?? '',
      id: id,
      userId: userId,
      doctorId: doctorId,
      consultationFee: dto.consultationFee ?? 0,
      reason: dto.reason ?? '',
      type: dto.type ?? '',
      appointmentType: dto.appointmentType ?? '',
      prefix: dto.prefix ?? '',
      time: dto.time ?? '',
      remainingTime: dto.remainingTime ?? 0,
      progress: dto.progress ?? '',
      isPaid: dto.isPaid ?? false,
      status: dto.status ?? false,
      prescription: toPrescription(prescription),
      doctor: toDoctor(doctor),
    );
  }

  Prescription toPrescription(PrescriptionDto? dto) {
    final prescribedLabs =
        dto?.prescribedLab?.map((e) => toPrescribed(e)).toList() ?? [];
    final prescribedMedicines =
        dto?.prescribedMedicine?.map((e) => toPrescribed(e)).toList() ?? [];
    return Prescription(
      prescriptionHere: dto?.prescriptionHere ?? "",
      cosultationNote: dto?.cosultationNote ?? '',
      bloodGroup: dto?.cosultationNote ?? '',
      status: dto?.status ?? false,
      patientConsultationNote: dto?.patientConsultationNote ?? '',
      prescribedMedicine: prescribedMedicines,
      prescribedLab: prescribedLabs,
    );
  }

  Prescribed toPrescribed(PrescribedDto dto) {
    // final id = dto.id.throwOnNull('Prescribed id must not be null');
    //  final noOfDays = dto.numberOfDays.throwOnNull('No of days must not be null');
    // final perDay = dto.perDay.throwOnNull('Per day value must not be null');
    // final dosage = dto.dosage.throwOnNull('Dosage day value must not be null');
    return Prescribed(
      id: dto.id ?? 0,
      numberOfDays: dto.numberOfDays ?? '0',
      dosage: dto.dosage ?? 0,
      perDay: dto.perDay ?? 0,
      isAfterMeal: dto.isAfterMeal ?? true,
      unit: dto.unit ?? "",
      morning: dto.morning ?? '0',
      evening: dto.evening ?? '0',
      night: dto.night ?? '0',
      prescribedElement: toPrescribedElement(dto.prescriptionElement),
    );
  }

  PrescribedElement toPrescribedElement(PrescribedElementDto? dto) {
    return PrescribedElement(
      name: dto?.name ?? '',
      description: dto?.description ?? '',
    );
  }

  Doctor toDoctor(DoctorDto dto) {
    final id = dto.id.throwOnNull('Doctor id must not be null');
    final name = dto.name.throwOnNull('Doctor name must not be null');

    return Doctor(
      sharedMedicalRecordId: dto.sharedMedicalRecordId ?? 0,
      isShared: dto.isShared ?? false,
      id: id,
      role: dto.role ?? '',
      name: name,
      city: dto.city ?? '',
      image: dto.image ?? '',
      age: dto.age ?? 0,
      gender: dto.gender ?? '',
      prefix: dto.prefix ?? '',
      isSubscribed: dto.isSubscribed ?? false,
      isInstantConsultation: dto.isInstantConsultation ?? false,
      isPhysicalConsultancy: dto.isPhysicalConsultancy ?? false,
      waitingTime: dto.waitingTime ?? 0,
      consultationDuration: dto.consultationDuration ?? '',
      about: dto.about ?? '',
      badge: dto.badge ?? '',
      pmcNo: dto.pmcNo ?? '',
      experienceYear: dto.experienceYear ?? 0,
      collaborations: [],
      isAvailable: dto.isAvailable ?? true,
      redirectUrl: '',
      doctorSpecialities: dto.doctorSpecialities ?? [],
      doctorEducations: dto.doctorEducations ?? [],
      totalReviews: dto.totalReviews ?? 0,
      reviewCount: dto.reviewCount ?? 0,
      clinic: dto.clinic ?? '',
    );
  }

  List<MedicalRecords> toMedicalRecordsHistory(
      BaseResponseDto<MedicalRecordsHistoryDto> dto) {
    return dto.data?.medicalRecords?.map((e) => toMedicalRecords(e)).toList() ??
        [];
  }

  MedicalRecords toMedicalRecords(MedicalRecordsDto dto) {
    final sharedRecordsWithDoctors =
        dto.sharedWithDoctors?.map((e) => toShredRecords(e)).toList() ?? [];
    final medicalRecordFile =
        dto.medicalRecordFiles?.map((e) => toMedicalRecordFile(e)).toList() ??
            [];
    return MedicalRecords(
        createdAt: dto.createdAt ?? "",
        id: dto.id ?? 0,
        userId: dto.userId ?? 0,
        prescriptionId: dto.prescriptionId ?? 0,
        conditions: dto.conditions ?? '',
        fileName: dto.fileName ?? '',
        totalReports: dto.totalReports ?? '0',
        sharedWithDoctorsCount: dto.sharedWithDoctorsCount ?? 0,
        date: dto.date ?? '',
        status: dto.status ?? true,
        reportsForUser: dto.reportsForUser ?? '',
        sharedWithDoctors: sharedRecordsWithDoctors,
        medicalRecordFiles: medicalRecordFile,
        checkBoxValue: false);
  }

  SharedWithDoctors toShredRecords(ShareRecordWithDoctorDto dto) {
    final doctor =
        dto.doctor.throwOnNull('Shared record doctor must not be null');
    return SharedWithDoctors(
      id: dto.id ?? 0,
      doctorId: dto.doctorId ?? 0,
      medicalRecordId: dto.medicalRecordId ?? 0,
      doctor: toDoctor(doctor),
    );
  }

  MedicalRecordFile toMedicalRecordFile(MedicalRecordFileDto dto) {
    return MedicalRecordFile(
      medicalRecordId: dto.medicalRecordId ?? 0,
      file: dto.file ?? '',
      id: dto.id ?? 0,
    );
  }

  DataList<Doctor> toDoctorsList(DataListDto<DoctorDto> dto) {
    return DataList(
      items: dto.data.toNotNullList((e) {
        return toDoctor(e);
      }),
    );
  }

  Error toError(Exception exception) {
    Error error;
    if (exception is DioException) {
      switch (exception.type) {
        case DioExceptionType.cancel:
          error = const Error(message: 'Request to API server was cancelled');
          break;
        case DioExceptionType.connectionTimeout:
          error = const Error(message: 'Connection timeout with API server');
          break;
        case DioExceptionType.unknown:
          error = const Error(
            message: 'Error while trying to process your request,'
                ' check your network connection',
          );
          break;
        case DioExceptionType.receiveTimeout:
          error = const Error(
            message: 'Receive timeout in connection '
                'with API server',
          );
          break;
        case DioExceptionType.badResponse:
          final data = exception.response?.data;

          try {
            final dto = ErrorDto.fromJson(data);
            error = Error(code: dto.code, message: dto.message);
          } on CheckedFromJsonException catch (e) {
            error = Error(
              message: e.message ?? ErrorDto.kParsingError,
            );
          }
          break;
        case DioExceptionType.sendTimeout:
          error = const Error(
            message: 'Send timeout in connection'
                ' with API server',
          );
          break;
        // ignore: no_default_cases
        default:
          error = const Error(message: 'Something went wrong');
          break;
      }
    } else if (exception is CheckedFromJsonException) {
      error = Error(
        message: exception.message ?? ErrorDto.kParsingError,
      );
    } else {
      error = Error(message: exception.toString());
    }
    logger.e(
      'An error has occurred. code=${error.code}, message=${error.message}',
    );
    return error;
  }

  BaseResponseDto<ProductDto> toGetProductDetail(
      BaseResponseDto<ProductDto> dto) {
    return BaseResponseDto(data: dto.data);
  }

  DataListDto<ProductDto> toGetProducts(DataListDto<ProductDto> dto) {
    return DataListDto(
        currentPage: 0, pageSize: 0, totalPages: 0, data: dto.data);
  }

  BaseResponseDto<TokenDto> toSignIn(BaseResponseDto<TokenDto> dto) {
    return BaseResponseDto<TokenDto>(data: dto.data);
  }
}
