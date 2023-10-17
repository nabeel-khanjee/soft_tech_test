import 'package:json_annotation/json_annotation.dart';
import 'package:softtech_test/src/data/dto/rating_dto.dart';

part 'product_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  explicitToJson: true,
  fieldRename: FieldRename.snake,
)
class ProductDto {
  int? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;
  RatingDto? rating;
  

  ProductDto(
      {this.id,
      this.title,
      this.price,
      this.description,
      this.category,
      this.image,
      this.rating});

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ProductDtoToJson(this);
}
