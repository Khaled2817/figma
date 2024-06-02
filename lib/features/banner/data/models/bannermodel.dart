import 'package:untitled/features/banner/domain/entities/bannar_entities.dart';

class BannerModel extends BannerEntity {
  BannerModel(
      {required super.branch_id,
      required super.created_at,
      required super.id,
      required super.image,
      required super.name,
      required super.restaurant_id,
      required super.updated_at});
  factory BannerModel.fromjson(Map<String, dynamic> json) {
    return BannerModel(
        branch_id: json["branch_id"],
        created_at: json["created_at"],
        id: json["id"],
        image: json["image"],
        name: json["name"],
        restaurant_id: json["restaurant_id"],
        updated_at: json["updated_at"]);
  }
}
