import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/features/addMazad/presentation/provider.dart/mazad_provider.dart';

class ContainerTap1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var myprovider = Provider.of<MazadProvider>(context);
    return Material(
      elevation: 1.w,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.w)),
      child: InkWell(
        onTap: () {
          myprovider.toggel1();
        },
        child: Container(
          height: 5.h,
          width: 40.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2.w),
              color: myprovider.containerColor1()),
          child: Center(
            child: Text(
              "اعلان خاص",
              style: TextStyleClass.semiHeadBoldStyle(
                  color: myprovider.textColor1()),
            ),
          ),
        ),
      ),
    );
  }
}
