import 'package:equatable/equatable.dart';
import 'package:softtech_test/src/domain/status/readings_status.dart';

class LastHealthScan extends Equatable {
  final String date;
  final String bloodPressureValue;
  final String bloodPressure;
  final String bloodPressureColor;
  final String heartRate;
  final String heartRateValue;
  final String heartRateColor;
  final String respiratoryRate;
  final String respiratoryRateValue;
  final String respiratoryRateColor;
  final String spo2;
  final String spo2Value;
  final String spo2Color;
  final String sdnn;
  final String sdnnValue;
  final String sdnnColor;
  final String score;
  final int sehatScore;
  final String time;
  final String stressLevel;
  final String stressLevelColor;
  final String stressLevelValue;

  final ReadingsStatus readingStatus;

  final int id;

  const LastHealthScan({
    required this.id,
    required this.stressLevel,
    required this.date,
    required this.bloodPressureValue,
    required this.bloodPressure,
    required this.bloodPressureColor,
    required this.heartRate,
    required this.heartRateValue,
    required this.heartRateColor,
    required this.respiratoryRate,
    required this.respiratoryRateValue,
    required this.respiratoryRateColor,
    required this.spo2,
    required this.spo2Value,
    required this.spo2Color,
    required this.sdnn,
    required this.sdnnValue,
    required this.sdnnColor,
    required this.score,
    required this.sehatScore,
    required this.readingStatus,
    required this.time,
    required this.stressLevelValue,
    required this.stressLevelColor,
  });

  @override
  List<Object?> get props => [
        id,
        sehatScore,
        stressLevelColor,
        stressLevelValue,
        stressLevel,
        date,
        bloodPressureValue,
        bloodPressure,
        bloodPressureColor,
        heartRate,
        heartRateValue,
        heartRateColor,
        respiratoryRate,
        respiratoryRateValue,
        respiratoryRateColor,
        spo2,
        spo2Value,
        spo2Color,
        sdnn,
        sdnnValue,
        sdnnColor,
        score,
      ];
}
