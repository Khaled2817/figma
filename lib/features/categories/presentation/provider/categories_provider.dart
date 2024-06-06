import 'package:flutter/material.dart';
import 'package:untitled/features/categories/data/models/stringList_model.dart';

class CategoriesProvider extends ChangeNotifier{
List<StringList> stringList=[
StringList(text:"الكل"),
StringList(text:"الاسواق"),
StringList(text:"الجملة"),
StringList(text:"المصنعين"),
StringList(text:"المنتجين"),
StringList(text:"الموزعين"),
StringList(text:"الوكلاء"),
StringList(text:"الموردين"),
StringList(text:"اخري"),
];

Color changeTextColor(index){
Color textColor=Colors.white;
if(index==0){
textColor=Colors.white;
}else{
textColor=const Color(0xff264653);
}
return textColor;
}

Color changeContainerColor(index){
Color containerColor;
if(index==0){
containerColor=const Color(0xff264653);
}else{
containerColor=Colors.white;
}
return containerColor;
}


}