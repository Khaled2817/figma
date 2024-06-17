import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/core/widget/appBar_container.dart';
import 'package:untitled/core/widget/button_widget.dart';
import 'package:untitled/features/add_order/presentation/widgets/container_extra.dart';
import 'package:untitled/features/add_order/presentation/widgets/container_item.dart';
import 'package:untitled/features/add_order/presentation/widgets/container_material.dart';
import 'package:untitled/features/add_order/presentation/widgets/widget_appBar.dart';

class AddOrderPage extends StatelessWidget {
  const AddOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ButtonWidget(
        onTap: () {},
        text: 'Add to Order',
        color: Color(0xff581D8A),
        textStyle: TextStyleClass.semiBigStyle(color: Colors.white),
      ),
      backgroundColor: Color.fromARGB(255, 255, 251, 251),
      body: Container(
        height: 100.h,
        width: 100.w,
        child: Column(
          children: [
            AppBarrContainer(
              height: 23.h,
              color1: Color(0xff22112E),
              color2: Color(0xff3E1B58),
              widget: WidgetAppbar(),
            ),
            SizedBox(
              height: 2.h,
            ),
            SingleChildScrollView(
              child: Container(
                  width: 100.w,
                  padding: appPadding,
                  child: Column(
                    children: [
                      ContainerItem(),
                      SizedBox(
                        height: 2.h,
                      ),
                      ContainerMaterial(),
                      SizedBox(
                        height: 2.h,
                      ),
                      ContainerExtra(),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
