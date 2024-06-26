import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/core/widget/button_widget.dart';
import 'package:untitled/features/wallet/presentation/widgets/palancecontainer.dart';
import 'package:untitled/features/wallet/presentation/widgets/wrapwallet.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
         leading: Icon(Icons.arrow_back_ios),
          elevation: 0,
        title: Text(
          "المحفظه",
          style: TextStyleClass.headBoldStyle(),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: appPadding,
        height: 100.h,
        width: 100.w,
        child: Column(
          children: <Widget>[
            const Palance(),
            SizedBox(height: 6.h,),
            ButtonWidget(onTap: () {  }, 
            text: 'اضافة رصيد',textStyle: TextStyleClass.semiBoldStyle(color: Colors.white),),
             SizedBox(height: 3.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("سجل الرصيد",style: TextStyleClass.semiStyle(color: const Color(0xffB9C0C9)),),
              ],
            ),
              SizedBox(height: 3.h,),
            const WalletWrap()
          ],
        ),
      ),
    );
  }
}
