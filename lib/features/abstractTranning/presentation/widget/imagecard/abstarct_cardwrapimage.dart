import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/core/models/abstract_model.dart';
import 'package:untitled/features/abstractTranning/presentation/widget/imagecard/abstract_cardimage.dart';

class AbstractCardWrapiamge extends StatelessWidget {
  SuperAbstractModel superAbstractModel;
   AbstractCardWrapiamge({super.key, required this.superAbstractModel});

  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
      width: 100.w,
      child: Wrap(
        runSpacing: 2.h,
        alignment: WrapAlignment.spaceBetween,
        children: <Widget>[
          ...List.generate(
            superAbstractModel.superList()?.length??3,
              (index) =>AbstractImageCard(abstractModel: superAbstractModel.superList()![index], onTap: () { 
                return superAbstractModel.onTap(index);
               },))
        ],
      ),
    );
  }
}
