import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PresentBarWidget extends StatelessWidget {
  const PresentBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var width=0.8;
    return Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
   Container(
    width: 85.w,
     child: Stack(
      children: [
        Container(
     //     width:  100.w,
          height: 10,
          decoration: BoxDecoration(color:Color(0xffEEEEEE),
          borderRadius:BorderRadius.circular(2.w) ),
        ),
        Positioned(
          left: -1,
          child: Material(
            borderRadius: BorderRadius.circular(2.w),
            child: AnimatedContainer(
                height: 10,
                width:  60.w,
                duration: Duration(milliseconds: 5),
                decoration: BoxDecoration(
                    color: (width < 0.3) ?
                    Colors.red : (width < 0.6) ?
                    Color(0xffE3BB47) : (width < 0.9) ?
                    Colors.amber : Colors.green,
                    borderRadius: BorderRadius.circular(2.w)
                )
            ),
          ),
        ),
      ],
      ),
   )
   ]
   ) ;
  }
}