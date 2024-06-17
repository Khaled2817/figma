import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/features/menu_information_comment/presentation/provider/menu_provider.dart';

class WarpSort extends StatelessWidget {
  const WarpSort({super.key});

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<MenuProvider>(context);
    return Wrap(
      runSpacing: 2.h,
      alignment: WrapAlignment.spaceBetween,
      children: <Widget>[
        ...List.generate(
            myProvider.sortModelList.length,
            (index) => Container(
              height: 3.h,
              decoration: BoxDecoration(
border: Border(bottom: BorderSide(color: Color(0xffECEBEB)))

              ),
              child: Center(
                child: Row(
                  
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                
                
                myProvider.sortModelList[index].widget,
                Spacer(),
                Text("${myProvider.sortModelList[index].text}")
                
                ],),
              ),
            )
                )
      ],
    );
  }
}
