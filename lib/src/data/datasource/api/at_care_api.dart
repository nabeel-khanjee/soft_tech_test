// ignore: depend_on_referenced_packages
import 'dart:io';

import 'package:dio/dio.dart';
// ignore: depend_on_referenced_packages
import 'package:http_parser/http_parser.dart';
import 'package:softtech_test/src/data/dto/appointments_history_dto.dart';
import 'package:softtech_test/src/data/dto/base_response_dto.dart';
import 'package:softtech_test/src/data/dto/dashboard_overview_dto.dart';
import 'package:softtech_test/src/data/dto/data_list_dto.dart';
import 'package:softtech_test/src/data/dto/doctor_dto.dart';
import 'package:softtech_test/src/data/dto/medical_records_history_dto.dart';
import 'package:softtech_test/src/data/dto/product_dto.dart';
import 'package:softtech_test/src/data/dto/sehat_scan_history_dto.dart';
import 'package:softtech_test/src/data/dto/token_dto.dart';

///
///
class SoftTechTestApi {
  static const String kRouteDashboardOverview = 'dashboard';
  static const String kRouteSehatScanHistory = 'health-scan';
  static const String kRoutePastAppointments = 'appointment';
  static const String kRouteMedicalRecords = 'medical-record';
  static const String kRouteAddMedicalRecords = 'medical-record';
  static const String kRouteDoctors = 'doctor/listing';
  static const String kRouteShareMedicalRecord = 'medical-record/share';

  static const String kRouteMedicalRecordsDownloadRecord =
      'medical-record/download-medical-record-pdf';

  static String kRouteGetProducts = 'products';

  static String kRouteAuthLogin = 'auth/login';

  static String kRouteGetProductDetail(int id) => '$kRouteGetProducts/$id';

  static String kRouteDeleteMedicalRecord(int id) =>
      '$kRouteMedicalRecords/$id';
  static String kRouteDeleteMedicalRecordFile(int id) =>
      '$kRouteMedicalRecords/file/$id';
  static String kRouteDownloadRecord(int id) =>
      '$kRouteMedicalRecordsDownloadRecord/$id';

  final Dio dio;

  const SoftTechTestApi(this.dio);

  ///
  ///  customer Dashboard Overview
  ///
  Future<BaseResponseDto<DashBoardOverViewDto>> getDashBoardOverview() async {
    final response = await dio.get(kRouteDashboardOverview);
    return BaseResponseDto<DashBoardOverViewDto>.fromJson(
      response.data,
      (value) => DashBoardOverViewDto.fromJson(value as Map<String, dynamic>),
    );
  }

  ///
  ///  get sehatScan history
  ///
  Future<BaseResponseDto<SehatScanHistoryDto>> getSehatScanHistory(date) async {
    final response = await dio.get(kRouteSehatScanHistory, queryParameters: {
      'date': date,
    });
    return BaseResponseDto<SehatScanHistoryDto>.fromJson(
      response.data,
      (value) => SehatScanHistoryDto.fromJson(value as Map<String, dynamic>),
    );
  }

  ///
  ///  get past appointment history
  ///
  Future<BaseResponseDto<AppointmentsHistoryDto>> getPastAppointments(
      {required String endDate, required String startDate}) async {
    final response = await dio.get(
      kRoutePastAppointments,
      queryParameters: {'status': 'all'},
    );
    return BaseResponseDto<AppointmentsHistoryDto>.fromJson(
      response.data,
      (value) => AppointmentsHistoryDto.fromJson(value as Map<String, dynamic>),
    );
  }

  ///
  ///  get medical records history
  ///
  Future<BaseResponseDto<MedicalRecordsHistoryDto>>
      getMedicalRecordsHistory() async {
    final response = await dio.get(
      kRouteMedicalRecords,
    );
    return BaseResponseDto<MedicalRecordsHistoryDto>.fromJson(
      response.data,
      (value) =>
          MedicalRecordsHistoryDto.fromJson(value as Map<String, dynamic>),
    );
  }

  Future<BaseResponseDto<MedicalRecordsHistoryDto>> getMedicalRecordsHistoryB(
      String startFrom, String endedTo) async {
    // log("hehehe + $kRouteMedicalRecords/search-medical-record?start_from=$startFrom&ended_to=$endedTo");

    final response = await dio.get(
      "$kRouteMedicalRecords?start_date=$startFrom&end_date=$endedTo",

      // "$kRouteMedicalRecords/search-medical-record?start_from=$startFrom&ended_to=$endedTo",
    );

    return BaseResponseDto<MedicalRecordsHistoryDto>.fromJson(
      response.data,
      (value) =>
          MedicalRecordsHistoryDto.fromJson(value as Map<String, dynamic>),
    );
  }

  ///
  ///  get medical records history
  ///
  Future<void> addMedicalRecords(
    List<File> filesList,
    List<int> ids,
    String date,
    String fileName,
    bool isInstantConsultationScreen,
  ) async {
    List<MultipartFile> files = [];

    for (var i = 0; i < filesList.length; i++) {
      files.add(
        await MultipartFile.fromFile(
          filesList[i].path,
          filename: filesList[i].path,
          contentType: MediaType('image', filesList[i].path),
        ),
      );
    }

    final formData = FormData.fromMap({
      isInstantConsultationScreen == false ? 'file_name' : 'filename': fileName,
      'date': date,
      'file_type_id[]': ids,
      'file[]': files,
    });
    await dio.post(
      isInstantConsultationScreen
          ? 'instant-medical-record'
          : kRouteAddMedicalRecords,
      data: formData,
    );
    return;
  }

  Future<void> editMedicalRecords(
    List<File> filesList,
    List<int> ids,
    String date,
    String fileName,
    String? medicalRecordId,
    bool isInstantConsultationScreen,
  ) async {
    List<MultipartFile> files = [];

    for (var i = 0; i < filesList.length; i++) {
      files.add(
        await MultipartFile.fromFile(
          filesList[i].path,
          filename: filesList[i].path,
          contentType: MediaType('image', filesList[i].path),
        ),
      );
    }

    final formData = FormData.fromMap({
      isInstantConsultationScreen == false ? 'file_name' : 'filename': fileName,
      'date': date,
      'file_type_id[]': ids.toList(),
      'file[]': files,
      isInstantConsultationScreen == false
          ? 'medical_record'
          : 'instant_medical_record': medicalRecordId
    });
    await dio.post(
      isInstantConsultationScreen
          ? 'instant-medical-record/update'
          : '$kRouteAddMedicalRecords/update',
      data: formData,
    );
    return;
  }

  ///
  ///  get doctors data
  ///
  Future<DataListDto<DoctorDto>> getDoctors(
      {required int medicalRecordId}) async {
    final response = await dio.get(kRouteDoctors, queryParameters: {
      'is_appointment': true,
      'medical_record_id': medicalRecordId
    });
    return DataListDto<DoctorDto>.fromJson(
      response.data,
      (value) => DoctorDto.fromJson(value as Map<String, dynamic>),
    );
  }

  ///
  ///  share medical records with doctor
  ///
  Future<void> shareMedicalRecord(
    int doctorId,
    int medicalRecordId, {
    required bool isFromInstantConsultation,
  }) async {
    await dio.post(
      isFromInstantConsultation
          ? 'instant-medical-record/share'
          : kRouteShareMedicalRecord,
      data: {
        isFromInstantConsultation
            ? 'instant_medical_record_id'
            : 'medical_record_id': medicalRecordId,
        'doctor_id': doctorId,
      },
    );
    return;
  }

  ///
  ///  delete medical records
  ///
  Future<void> deleteMedicalRecord(
    int medicalRecordId,
  ) async {
    await dio.delete(
      kRouteDeleteMedicalRecord(medicalRecordId),
    );
    return;
  }

  ///
  ///  delete medical record file
  ///
  Future<void> deleteMedicalRecordFile(
    int fileId,
  ) async {
    await dio.delete(
      kRouteDeleteMedicalRecordFile(fileId),
    );
    return;
  }

  ///
  ///  delete medical records
  ///
  Future<void> downloadMedicalRecord(
    int medicalRecordId,
  ) async {
    await dio.get(
      kRouteDownloadRecord(medicalRecordId),
    );
    return;
  }

  Future<BaseResponseDto<TokenDto>> signIn(
      {required String userName, required String password}) async {
    final response = await dio.post(kRouteAuthLogin,
        data: {'username': userName, 'password': password});
    return BaseResponseDto.fromJson({"data": response.data},
        (value) => TokenDto.fromJson(value as Map<String, dynamic>));
  }

  Future<BaseResponseDto<ProductDto>> getProductDetails(int id) async {
    final response = await dio.get(kRouteGetProductDetail(id));
    return BaseResponseDto.fromJson({'data': response.data},
        (value) => ProductDto.fromJson(value as Map<String, dynamic>));
  }

  Future<DataListDto<ProductDto>> getProducts(int limit) async {
    final response =
        await dio.get(kRouteGetProducts, queryParameters: {'limit': limit});
    return DataListDto.fromJson(
      {'data': response.data},
      (value) => ProductDto.fromJson(
        value as Map<String, dynamic>,
      ),
    );
  }
}
