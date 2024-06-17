import 'package:flutter/material.dart';

class CheckOutProvider extends ChangeNotifier{

List<Widget> radio=[

  Row(
    children: [
      Radio(value: 1, groupValue:false , onChanged:(value){}),Text("data")
    ],
  ),
    Row(
    children: [
      Radio(value: 1, groupValue:false , onChanged:(value){}),Text("data")
    ],
  ),
    Row(
    children: [
      Radio(value: 1, groupValue:false , onChanged:(value){}),Text("data")
    ],
  )
];

  
}