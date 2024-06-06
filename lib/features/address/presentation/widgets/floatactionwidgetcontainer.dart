import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/widget/button_widget.dart';
import 'package:untitled/core/widget/text_field.dart';
class FloatingButtomMap extends StatelessWidget {
const FloatingButtomMap({super.key});
  @override
  Widget build(BuildContext context) {
    var controllerAddress=TextEditingController();
    return Padding(
      padding:  EdgeInsets.all(4.w),
      child: Container(
        height:25.h,
        padding:EdgeInsets.all(4.5.w),
        width: 100.w,
        decoration: BoxDecoration(color: Colors.white
        ,
        borderRadius: BorderRadius.circular(2.w)
        ),
        child:
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
      
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("عنوان الزياره (معالم مميزه للعنوان)",
          style:TextStyleClass.semiStyle(color: const Color(0xff72757B)) ,),
        ],
      ),
      Container(
        //margin: EdgeInsets.fromLTRB(5.1.w,0,5.1.w,0),
        child: TextFieldWidget(controller: controllerAddress,)),
        SizedBox(height: 2.h,),
      Container(
        margin: EdgeInsets.fromLTRB(0, 0, 0,2.w),
        child: ButtonWidget(
            onTap: () {
            },
            text: 'متابعه',textStyle:TextStyleClass.headBoldStyle(color: Colors.white) ,),
      ),
       ],),),
    );
  }
}


// //Marketmodll model;
// //bannnermodll model;
// FloatingButtomMap({this.model,this.model2}){
// 
// Inkewll(child:Text(modele.name),ontap:(){model.ontap})
// 
// }