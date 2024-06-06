

import 'package:untitled/core/models/abstract_model.dart';

class AbstractEntity2 implements AbstractModel{
@override
String title;
@override
String description;
@override
String image;
@override
String price;
AbstractEntity2({
  required this.description,
  required this.title,
  required this.image,
  required this.price,
  });
}