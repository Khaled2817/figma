import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/features/add_order/presentation/provider/provider_add_item.dart';

class WrapMaterials extends StatelessWidget {
  const WrapMaterials({super.key});

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<AddOrderProvider>(context);
    return SizedBox(
      width: 100.w,
      child: Wrap(
        runSpacing: 2.h,
        alignment: WrapAlignment.spaceBetween,
        children: <Widget>[
          ...List.generate(
              myProvider.materialsModellist.length,
              (index) => Padding(
                    padding: EdgeInsets.only(right: 3.w),
                    child: InkWell(
                      onTap: () {
                        myProvider.onTap(myProvider.materialsModellist[index]);
                      },
                      child: Container(
                        height: 3.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2.w),
                            border: Border.all(
                                color: myProvider.isSelected(
                                    myProvider.materialsModellist[index]))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 2.w, right: 2.w),
                              child: Text(
                                "${myProvider.materialsModellist[index].text}",
                                style: TextStyleClass.normalStyle(
                                    color: myProvider.isSelected(
                                        myProvider.materialsModellist[index])),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ))
        ],
      ),
    );
  }
}
