import 'package:flutter/material.dart';

class TextFormfiled extends StatelessWidget {
  const TextFormfiled({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(10.0),
        boxShadow: const [
        
        BoxShadow(
          color: Color.fromARGB(255, 221, 221, 221),
          offset: Offset(
            0.0,
            5.0,
          ),
          blurRadius: 5.0,
        ), //BoxShadow
        BoxShadow(
          color: Colors.white,
          offset: Offset(0.0, 0.0),
          blurRadius: 0.0,
          spreadRadius: 0.0,
        ), //BoxShadow
      ]),
      child: TextFormFieldreusable(text: "البحث عن اي منتج لدينا ",),
    );
  }
}

Widget TextFormFieldreusable({
  TextEditingController? controller,
  Icon? prefixIcon,
  TextInputType? passtype,
  bool x = true,
  String? text,
  OutlineInputBorder? border,
  TextDirection? textDirection,
  ImageIcon ?suffixIcon
}) {
  return TextFormField(
    keyboardType: passtype,
    controller: controller,
    decoration: InputDecoration(
      prefix:prefixIcon ,
      border:border,
      suffixIcon: suffixIcon,
      hintText: text,
      hintTextDirection:textDirection ,
      filled: true,
      fillColor: Color.fromARGB(255, 255, 255, 255),
      // border: OutlineInputBorder(
      //   borderRadius: BorderRadius.circular(15.0),
      // ),
      // hintText: 'Enter your username',
    ),
  );
}
