import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/features/abstractTranning/presentation/provider/provider_entity2.dart';
import 'package:untitled/features/abstractTranning/presentation/widget/imagecard/abstarct_cardwrapimage.dart';

class AbstractPage2 extends StatelessWidget {
  const AbstractPage2({super.key});

  @override
  Widget build(BuildContext context) {
    var myProvider=Provider.of<AbstractProvider2>(context);
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: appPadding,
        height: 100.h,width: 100.w,
    child: Column(children: <Widget>[
AbstractCardWrapiamge(superAbstractModel:myProvider,)

    ],),
    ),);
  }
}