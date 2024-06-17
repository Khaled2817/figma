import 'package:equatable/equatable.dart';

class MaterialsModel extends Equatable {
final String text;
MaterialsModel({required this.text});

  @override
  List<Object?> get props =>[text];
}