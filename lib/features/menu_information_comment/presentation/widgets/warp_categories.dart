import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/features/add_order/presentation/provider/provider_add_item.dart';
import 'package:untitled/features/menu_information_comment/presentation/provider/menu_provider.dart';


class WarpCategories extends StatelessWidget {
  const WarpCategories({super.key});

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<MenuProvider>(context);
    return SizedBox(
      width: 100.w,
      child: Wrap(
        runSpacing: 2.h,
        alignment: WrapAlignment.spaceBetween,
        children: <Widget>[
          ...List.generate(
              myProvider.categoriessModellist.length,
              (index) => Container(
                height: 3.h,
           
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.w),
                  border: Border.all(color: Color(0xffC1BCBC))
                ),
                child: Padding(
                  padding:  EdgeInsets.only(left: 2.w,right: 2.w),
                  child: Text("${myProvider.categoriessModellist[index].text}"),
                ),)
                  
                  )
        ],
      ),
    );
  }
}
