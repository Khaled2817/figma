import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/features/add_order/data/models/extra_Ingredients_model.dart';
import 'package:untitled/features/add_order/data/models/materials_model.dart';

class AddOrderProvider extends ChangeNotifier{



List<MaterialsModel> materialsModellist=[
  MaterialsModel(text:'Sauce'),
  MaterialsModel(text:'Lettuce'),
  MaterialsModel(text:'Onion'),
  MaterialsModel(text:'Tomatoes'),
];


List<MaterialsModel> selecrted=[



];

void onTap(MaterialsModel v){
if(selecrted.contains(v)){
  selecrted.remove(v);
}else{
  selecrted.add(v);
}
notifyListeners();
}
Color isSelected(MaterialsModel  v){
return selecrted.contains(v)? Colors.red:Colors.grey;
}

List<ExtraIngredientsModel> extraIngredientsModellist=[

ExtraIngredientsModel(text:"Hot Sauce" ,widget:Container(
  width: 5.w,
  height: 5.h,
  decoration: BoxDecoration(
shape: BoxShape.circle,
border: Border.all(color:Color(0xffB983E7))
  ),
  //child:Icon(Icons.circle),
  )),
ExtraIngredientsModel(text:"Hot Sauce" ,widget:Container(
  width: 5.w,
  height: 5.h,
  decoration: BoxDecoration(
shape: BoxShape.circle,
border: Border.all(color:Color(0xffB983E7))
  ),
  //child:Icon(Icons.circle),
  )
  ),
];

}