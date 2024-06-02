import 'package:flutter/material.dart';

void NavigatTo(context,Widget Screen){
 Navigator.of(context).pushReplacement( MaterialPageRoute(builder: (context) =>Screen));
}
void NavigatToScreen(context,Widget Screen){
 Navigator.of(context).push( MaterialPageRoute(builder: (context) =>Screen));
}
