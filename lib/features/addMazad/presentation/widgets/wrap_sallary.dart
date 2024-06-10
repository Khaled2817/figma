import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/features/addMazad/presentation/provider.dart/mazad_provider.dart';

class WrapSallary extends StatelessWidget {
  const WrapSallary({super.key});

  @override
  Widget build(BuildContext context) {
    var myprovider=Provider.of<MazadProvider>(context);
    return SizedBox(
      width: 100.w,
      child: Wrap(
        runSpacing: 2.h,
        alignment: WrapAlignment.spaceBetween,
        children: <Widget>[
          ...List.generate(
               myprovider.contectionList.length,
              (index) => Container(
        height: 9.h,
        width: 100.w,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.w),
        color:  Color.fromARGB(255, 255, 255, 255)
        ),
        child: Padding(
          padding: EdgeInsets.all(2.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
             Expanded(
               child: Row(children: [ myprovider.sallarListModel[index].icon,
               SizedBox(width: 1.w,),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        maxLines: 2,
                        overflow: TextOverflow.clip,
                        myprovider.sallarListModel[index].text1,
                        style:
                            TextStyleClass.semiBoldStyle(color: Color(0xff615D5C)),
                      ),
                      Text(
                           maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        myprovider.sallarListModel[index].text2,
                          style: TextStyleClass.smallBoldStyle(
                              color: Color(0xff615D5C)))
                    ],
                  ),
                ),],),
             ),
       
              Container(
               height: 3.h,
               width: 6.w,
               decoration: BoxDecoration(
                 color: Colors.white,
borderRadius: BorderRadius.circular(2.w),
border: Border.all(color: Color(0xffE6EEF0))

               ),
              )
            ],
          ),
        ),
      )
                  
                  )
        ],
      ),
    );
  }
}