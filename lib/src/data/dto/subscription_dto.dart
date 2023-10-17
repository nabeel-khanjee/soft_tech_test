import 'package:json_annotation/json_annotation.dart';
import 'package:softtech_test/src/data/dto/package_dto.dart';

part 'subscription_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  explicitToJson: true,
  fieldRename: FieldRename.snake,
)
class SubscriptionDto {
  final int? remainingDays;
  final int? isYearly;
  final String? startDate;
  final String? endDate;
  final PackageDto? package;
  const SubscriptionDto({
    this.remainingDays,
    this.startDate,
    this.endDate,
    this.package,
    this.isYearly,
  });

  factory SubscriptionDto.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionDtoFromJson(json);

  Map<String, dynamic> toJson() => _$SubscriptionDtoToJson(this);
}
