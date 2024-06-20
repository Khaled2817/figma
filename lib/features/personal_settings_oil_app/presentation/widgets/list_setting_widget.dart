import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/features/personal_settings_oil_app/presentation/provider/personal_provider_oil.dart';

class ListSettingWidget extends StatelessWidget {
  const ListSettingWidget({super.key, required this.index});
final int index;
  @override
  Widget build(BuildContext context) {
    var myprovider=Provider.of<PersonalProviderOil>(context);
    return Container(
      width: 100.w,
      padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 1.5.h),
      decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Color(0xffD9D9D9)))),
      child: Row(children: <Widget>[
      myprovider.perosnalOilModelList[index].widget1,
      SizedBox(width: 2.w,),
      InkWell(
        onTap: (){
          myprovider.goTo(myprovider.perosnalOilModelList[index].text);
        },
        child: Text("${myprovider.perosnalOilModelList[index].text}",style: TextStyleClass.semiStyle(),)),
      Spacer(),
      myprovider.perosnalOilModelList[index].widget2,
      ],),
    );
  }
}