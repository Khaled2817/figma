import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/features/address/presentation/widgets/FloatingButtom.dart';
import 'package:untitled/features/address/presentation/widgets/wrapAddress.dart';

class AddressesPage extends StatelessWidget {
  const AddressesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:const FloatingButtomAddress() ,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios),
        title: Text(
          "عناويني",
          style: TextStyleClass.headBoldStyle(),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: appPadding,
        height: 100.h,
        width: 100.w,
        child: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(height: 3.h,),
const WrapAddress(),
SizedBox(height: 16.h,),
//ButtonWidget(onTap: (){Provider.of<AddressesProvider>(context,listen: false).addAddress();}, text:"اضف عنوان جديد",textStyle: TextStyleClass.semiBigBoldStyle(color: Colors.white),)

          ],
        )),
      ),
    );
  }
}
