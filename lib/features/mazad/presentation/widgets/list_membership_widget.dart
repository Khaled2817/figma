import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/features/mazad/presentation/provider/mazad_provider.dart';

class ListMembershipWidget extends StatelessWidget {
  const ListMembershipWidget({super.key, required this.index});
final int index;
  @override
  Widget build(BuildContext context) {
    var myprovider = Provider.of<MazadProvidersetting>(context);
    return Padding(
      padding: EdgeInsets.only(top: 3.h),
      child: Row(children: <Widget>[
      
      Column(
        children: [
      Text("${myprovider.UpdatingDataModelList[index].text1}",style:TextStyleClass.semiStyle(color: Color(0xffD9D9D9))),
        ],
      ),
      Spacer(),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("${myprovider.UpdatingDataModelList[index].text2}",style:TextStyleClass.semiStyle(color: Color(0xffD9D9D9))),
        ],
      ),
        ],
      )
      
      ],),
    );
  }
}