import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/features/mazad/presentation/provider/mazad_provider.dart';
import 'package:untitled/features/mazad/presentation/widgets/list_membership_widget.dart';

class MembershipWidget extends StatelessWidget {
  const MembershipWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var myprovider = Provider.of<MazadProvidersetting>(context);
    return Container(
      width: 100.w,
     // padding: appPadding,
      decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width:0.8.w,color: Color(0xffD9D9D9)),
            top: BorderSide(width:0.8.w,color: Color(0xffD9D9D9)))),
            child: Column(children: <Widget>[
              ...List.generate(myprovider.UpdatingDataModelList.length, (index)=>ListMembershipWidget(index:index,)),
              SizedBox(height: 2.h,)
            ],),
    );
  }
}
