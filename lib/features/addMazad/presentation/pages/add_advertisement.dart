import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/core/widget/button_widget.dart';
import 'package:untitled/core/widget/text_field.dart';
import 'package:untitled/features/addMazad/presentation/widgets/advertisement_container.dart';
import 'package:untitled/features/addMazad/presentation/widgets/wrap_conection.dart';
import 'package:untitled/features/addMazad/presentation/widgets/wrap_sallary.dart';

class AddAdvertisement extends StatelessWidget {
  const AddAdvertisement({super.key});

  @override
  Widget build(BuildContext context) {
    var control = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios_new_rounded),
        title: Text(
          "اضافة اعلان",
          style: TextStyleClass.semiBigBoldStyle(color: Colors.black),
        ),
      ),
      body: Container(
        height: 100.h,
        width: 100.w,
        padding: appPadding,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              AdvertisementContainer(),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "موقع الاعلان",
                    style:
                        TextStyleClass.semiBoldStyle(color: Color(0xffB9C0C9)),
                  ),
                ],
              ),
              TextFieldWidget(
                controller: control,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "نوع التسعير",
                    style:
                        TextStyleClass.semiBoldStyle(color: Color(0xffB9C0C9)),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              WrapSallary(),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "نوع التواصل ",
                    style:
                        TextStyleClass.semiBoldStyle(color: Color(0xffB9C0C9)),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              WrapConection(),
              SizedBox(
                height: 3.h,
              ),
              Container(
                width: 100.w,
                height: 7.h,
                child: ButtonWidget(
                  onTap: () {},
                  text: 'اضف الاعلان',
                  color: Color(0xff0087FE),
                  textStyle:
                      TextStyleClass.semiHeadBoldStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
