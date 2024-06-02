import 'package:flutter/material.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/TextFiled_widget/Textfilde_widget.dart';

class DetailsTextformFild extends StatelessWidget {
  const DetailsTextformFild({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      
 child: TextFormFieldreusable(
      textDirection: TextDirection.rtl,
      text: "تم اختيار الموقع عبر الخريطة  مسبقا",
      suffixIcon:ImageIcon(
  AssetImage("${Images.locationicon}"),
  size: 30.0,
  color: Colors.red,
),
      border:OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(width: 10, color: Color.fromARGB(255, 169, 163, 163)),
    ) )
      
      );
  }
}