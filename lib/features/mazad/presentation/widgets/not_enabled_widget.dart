import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/core/widget/button_widget.dart';
import 'package:untitled/features/mazad/presentation/provider/mazad_provider.dart';
import 'package:untitled/features/mazad/presentation/widgets/membership_widget.dart';

class NotEnabledWidget extends StatelessWidget {
  const NotEnabledWidget({super.key});

  @override
  Widget build(BuildContext context) {
     var myprovider = Provider.of<MazadProvidersetting>(context);
    return Padding(
      padding:  EdgeInsets.all(2.w),
      child: Material(
        elevation: 1.w,
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.w)),
        child: Container(
          height: 38.h,
          width: 100.w,
          padding: appPadding,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.w)),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.h,),
              Row(children: <Widget>[Text("غير مفعل",style:TextStyleClass.semiStyle(color: Color(0xffD9D9D9)),)],),
              SizedBox(height: 2.h,),
              MembershipWidget(),
              SizedBox(height: 2.h,),
              ButtonWidget(color: Color(0xff0087FE),onTap: (){myprovider.goTto();}, text:"تحديث البيانات",textStyle:TextStyleClass.normalBoldStyle(color:Colors.white) ,),
              SizedBox(height: 2.h,),
            ],
          ),
        ),
      ),
    );
  }
}
