import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class CoponModel extends Equatable{

String text;
Widget widget;
CoponModel({required this.text,required this.widget});


  @override
  // TODO: implement props
  List<Object?> get props =>[text,widget];

}