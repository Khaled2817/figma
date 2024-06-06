

import '../../../../core/models/abstract_model.dart';

class AbstractEntity implements AbstractModel {
  @override
  String title;
  @override
  String description;
  @override
  String image;
  @override
  String price;
  AbstractEntity({
    required this.description,
    required this.title,
    required this.image,
    required this.price,
  });
}
