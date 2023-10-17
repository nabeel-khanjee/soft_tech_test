import 'dart:io';
import 'package:logger/logger.dart';
import 'package:softtech_test/src/data/common/object_mapper.dart';
import 'package:softtech_test/src/data/datasource/api/at_care_api.dart';
import 'package:softtech_test/src/data/dto/base_response_dto.dart';
import 'package:softtech_test/src/data/dto/data_list_dto.dart';
import 'package:softtech_test/src/data/dto/product_dto.dart';
import 'package:softtech_test/src/data/dto/token_dto.dart';
import 'package:softtech_test/src/domain/domain.dart';
import 'package:softtech_test/src/domain/model/appointment.dart';
import 'package:softtech_test/src/domain/model/data_list.dart';
import 'package:softtech_test/src/domain/model/docotor.dart';
import 'package:softtech_test/src/domain/model/medical_records.dart';

class ApiRepositoryImpl extends ApiRepository {
  final SoftTechTestApi softTechTestApi;
  final ObjectMapper objectMapper;
  final Logger logger;

  ApiRepositoryImpl({
    required this.softTechTestApi,
    required this.objectMapper,
    required this.logger,
  });

  @override
  Future<Result<AnimatedDrawer>> getDashboardOverview() async {
    try {
      final response = await softTechTestApi.getDashBoardOverview();
      return Result.success(objectMapper.toDashboardOverview(response));
    } on Exception catch (e) {
      logger.e(e);
      return Result.failed(objectMapper.toError(e));
    }
  }

  @override
  Future<Result<BaseResponseDto<ProductDto>>> getProductDetails(int id) async {
    try {
      final response = await softTechTestApi.getProductDetails(id);
      return Result.success(objectMapper.toGetProductDetail(response));
    } on Exception catch (e) {
      logger.e(e);
      return Result.failed(objectMapper.toError(e));
    }
  }

  @override
  Future<Result<DataListDto<ProductDto>>> getProducts(limit) async {
    try {
      final response = await softTechTestApi.getProducts(limit);
      return Result.success(objectMapper.toGetProducts(response));
    } on Exception catch (e) {
      logger.e(e);
      return Result.failed(objectMapper.toError(e));
    }
  }

  @override
  Future<Result<List<LastHealthScan>>> getSehatScanHistory(date) async {
    try {
      final response = await softTechTestApi.getSehatScanHistory(date);
      return Result.success(objectMapper.toSehatScanHistory(response));
    } on Exception catch (e) {
      logger.e(e);
      return Result.failed(objectMapper.toError(e));
    }
  }

  @override
  Future<Result<List<MedicalRecords>>> getMedicalRecordsHistory() async {
    try {
      final response = await softTechTestApi.getMedicalRecordsHistory();
      return Result.success(objectMapper.toMedicalRecordsHistory(response));
    } on Exception catch (e) {
      logger.e(e);
      return Result.failed(objectMapper.toError(e));
    }
  }

  @override
  Future<Result<List<Appointment>>> getPastAppointments(
      String startDate, String endDate) async {
    try {
      final response = await softTechTestApi.getPastAppointments(
          endDate: endDate, startDate: startDate);
      return Result.success(objectMapper.toPastAppointments(response));
    } on Exception catch (e) {
      logger.e(e);
      return Result.failed(objectMapper.toError(e));
    }
  }

  @override
  Future<Result> addMedicalRecords(
    List<File> filesList,
    List<int> ids,
    String date,
    String fileName,
    bool isInstantConsultationScreen,
  ) async {
    try {
      await softTechTestApi.addMedicalRecords(
          filesList, ids, date, fileName, isInstantConsultationScreen);
      return Result.success("");
    } on Exception catch (e) {
      logger.e(e);
      return Result.failed(objectMapper.toError(e));
    }
  }

  @override
  Future<Result> editMedicalRecords(
      List<File> filesList,
      List<int> ids,
      String date,
      String fileName,
      String? medicalRecordId,
      bool isInstantConsultationScreen) async {
    try {
      await softTechTestApi.editMedicalRecords(filesList, ids, date, fileName,
          medicalRecordId, isInstantConsultationScreen);
      return Result.success("");
    } on Exception catch (e) {
      logger.e(e);
      return Result.failed(objectMapper.toError(e));
    }
  }

  @override
  Future<Result<DataList<Doctor>>> getDoctors(
      {required int medicalRecordId}) async {
    try {
      final response =
          await softTechTestApi.getDoctors(medicalRecordId: medicalRecordId);
      return Result.success(objectMapper.toDoctorsList(response));
    } on Exception catch (e) {
      logger.e(e);
      return Result.failed(objectMapper.toError(e));
    }
  }

  @override
  Future<Result> shareMedicalRecord(
      int doctorId, int medicalRecordId, bool isFromInstantConsultation) async {
    try {
      await softTechTestApi.shareMedicalRecord(doctorId, medicalRecordId,
          isFromInstantConsultation: isFromInstantConsultation);
      return Result.success("");
    } on Exception catch (e) {
      logger.e(e);
      return Result.failed(objectMapper.toError(e));
    }
  }

  @override
  Future<Result> deleteMedicalRecord(int medicalRecordId) async {
    try {
      await softTechTestApi.deleteMedicalRecord(medicalRecordId);
      return Result.success("");
    } on Exception catch (e) {
      logger.e(e);
      return Result.failed(objectMapper.toError(e));
    }
  }

  @override
  Future<Result> deleteMedicalRecordFile(int fileId) async {
    try {
      await softTechTestApi.deleteMedicalRecordFile(fileId);
      return Result.success("");
    } on Exception catch (e) {
      logger.e(e);
      return Result.failed(objectMapper.toError(e));
    }
  }

  Future<Result> downloadMedicalRecord(int medicalRecordId) async {
    try {
      await softTechTestApi.deleteMedicalRecord(medicalRecordId);
      return Result.success("");
    } on Exception catch (e) {
      logger.e(e);
      return Result.failed(objectMapper.toError(e));
    }
  }

  @override
  Future<Result<List<MedicalRecords>>> getMedicalRecordsHistoryB(
      String a, String b) async {
    try {
      final response = await softTechTestApi.getMedicalRecordsHistoryB(a, b);
      return Result.success(objectMapper.toMedicalRecordsHistory(response));
    } on Exception catch (e) {
      logger.e(e);
      return Result.failed(objectMapper.toError(e));
    }
  }
  
  @override
  Future<Result<BaseResponseDto<TokenDto>>> signIn({required String userName, required String password}) async {
      try {
      final response = await softTechTestApi.signIn(password: password,
      userName: userName
      );
      return Result.success(objectMapper.toSignIn(response));
    } on Exception catch (e) {
      logger.e(e);
      return Result.failed(objectMapper.toError(e));
    }
  
  }
}
