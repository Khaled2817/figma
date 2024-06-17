import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/button_widget.dart';
import 'package:untitled/features/menu_information_comment/presentation/widgets/warp_categories.dart';
import 'package:untitled/features/menu_information_comment/presentation/widgets/warp_sort.dart';


class WrapMenu2 extends StatelessWidget {
  const WrapMenu2({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      child: Wrap(
        runSpacing: 2.h,
        alignment: WrapAlignment.spaceBetween,
        children: <Widget>[
          ...List.generate(
              4,
              (index) =>  InkWell(
                onTap: (){
      
       showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content:Container(
                        height:50.h,
                        width: 100.w,
                        padding: appPadding,
                        decoration: BoxDecoration(color: Colors.white,
                        borderRadius: BorderRadius.circular(30.w)
                        ),
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                      Text("Filtera",style: TextStyleClass.semiBigStyle(color: Color(0xff581D8A)),),
                      SizedBox(height: 2.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [Text("Categories",style: TextStyleClass.semiBigStyle())],),
                        WarpCategories(),
                          SizedBox(height: 2.h,),
      Row(
        
        mainAxisAlignment: MainAxisAlignment.end,
        children: [Text("Sort By",style: TextStyleClass.semiBigStyle())],),
                        WarpSort()
      
      
                        ,Spacer(),
      
                        ButtonWidget(onTap: (){}, text:"Done",color: Color(0xff581D8A),)
                        ],) ,),
                    );
                  },
                );
      
                },
                child: Container(
                      width: 46.w,
                      height: 20.h,
    
                      decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.circular(2.w)
                         , border: Border.all(color: Color(0xffDAD7D7))
                          ),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                
                Container(width: 100.w,
                height: 13.h,
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage("${Images.pp}") )),
                
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 3.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [Text("Arizona Burger",style: TextStyleClass.semiStyle(),),
                  Text("12.00 \$",style: TextStyleClass.semiStyle(color: Color(0xffB983E7)),)],),
                )
                
                        ]
                      )
                    ),
              )
                  
                  )
        ],
      ),
    );
  }
}






// Container(
//       width: 100.w,
//       height: 17.h,
//       decoration: BoxDecoration(
//          // color: Colors.white,
//           ),
//       child: Column(
//         children: <Widget>[

// Container(width: 100.w,
// height: 10.h,
// decoration: BoxDecoration(image: DecorationImage(image: AssetImage("${Images.pp}"))),

// ),
// Text("Arizona Burger",style: TextStyleClass.semiStyle(),),
// Text("12.00 \$",style: TextStyleClass.semiStyle(color: Color(0xffB983E7)),)

//         ]
//       )
//     );