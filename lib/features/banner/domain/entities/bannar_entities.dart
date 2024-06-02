import 'package:equatable/equatable.dart';

class BannerEntity extends Equatable{

int id;
int restaurant_id ;
String image;
String created_at;
String updated_at;
int branch_id;
String name; 

BannerEntity({required this.branch_id,
required this.created_at,required this.id,
required this.image,required this.name,
required this.restaurant_id,
required this.updated_at
});

  @override
  // TODO: implement props
  List<Object?> get props =>[id,restaurant_id,image,created_at,updated_at,branch_id,name];

}