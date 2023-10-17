import 'package:json_annotation/json_annotation.dart';

part 'rating_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  explicitToJson: true,
  fieldRename: FieldRename.snake,
)
class RatingDto {
  double? rate;
  int? count;

  RatingDto({this.rate, this.count});

  factory RatingDto.fromJson(Map<String, dynamic> json) =>
      _$RatingDtoFromJson(json);

  Map<String, dynamic> toJson() => _$RatingDtoToJson(this);
}
