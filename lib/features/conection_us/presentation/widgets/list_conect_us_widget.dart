import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/widget/button_widget.dart';
import 'package:untitled/features/conection_us/presentation/provider/conection_us_provider.dart';
import 'package:untitled/features/conection_us/presentation/widgets/container_conection.dart';

class ListConectUsWidget extends StatelessWidget {
  const ListConectUsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var myprovider = Provider.of<ConectionUsProvider>(context);
    return Column(
      children: <Widget>[
        ...List.generate(
            myprovider.conectionUsModelList.length,
            (index) => ContainerConection(
                  index: index,
                )),
        ButtonWidget(
          onTap: () {},
          text: 'ارسال',
          textStyle: TextStyleClass.semiStyle(color: Colors.white),
          color: Color(0xffE3BB47),
        )
      ],
    );
  }
}
