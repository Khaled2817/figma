import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/svg_widget.dart';

class ContainerItem extends StatelessWidget {
  const ContainerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15.h,
      padding: EdgeInsets.all(2.w),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(2.w)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
               // height: 9.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Arizona Burger",
                      style: TextStyleClass.semiStyle(),
                    ),
                    Text(
                      "180g meat, tomatoes",
                      style: TextStyleClass.normalStyle(color: Color(0xffA2A2A2)),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                     Row(
                       children: [
                         Column(
                                         
                                         mainAxisAlignment: MainAxisAlignment.end,
                                         children: [ Text("\$12.00",
                                             style: TextStyleClass.semiStyle(color: Color(0xff581D8A))),
                                             SizedBox(height: 1.h,),
                                             Row(
                          children: [
                            Text("Points 200",
                            style: TextStyleClass.semiStyle(color: Color(0xff581D8A))),
                          Image.asset("${Images.point}")
                          ],
                                             ),],),
                                               SizedBox(width: 8.w,),
                                       SvgWidget(svg: Images.plus),
                                       SizedBox(width: 2.w,),
                                       Text("1",style: TextStyleClass.semiStyle(color:Colors.black)),
                                       SizedBox(width: 2.w,),
                                       SvgWidget(svg: Images.min),
                                         SizedBox(width: 3.w,),
                       ],
                     )
                  ],
                ),
              ),
              SizedBox(
                width: 2.w,
              ),
              Container(
                height: 10.h,
                width: 30.w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("${Images.pp}"), fit: BoxFit.cover)),
              )
            ],
          ),
          SizedBox(
            width: 6.w,
          ),
       
        ],
      ),
    );
  }
}
