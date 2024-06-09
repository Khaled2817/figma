import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/features/mylocation/presentation/widgets/myLocation.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:Container(width: 100.w,height: 100.h,
    child:MyLocation() ,
    ) ,);
    
  }
}