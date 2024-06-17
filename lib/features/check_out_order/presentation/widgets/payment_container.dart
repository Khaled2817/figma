import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';

import '../provider/Provider.dart';

class PaymentContainer extends StatelessWidget {
  const PaymentContainer({super.key});

  @override
  Widget build(BuildContext context) {
    var myprovider=Provider.of<CheckOutProvider>(context);
    return Container(
      width: 100.w,
      decoration: BoxDecoration(
      border:Border(top:BorderSide(color: Color(0xffD9D9D9)) ,bottom: BorderSide(color: Color(0xffD9D9D9)))
      ),
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.end,
        children: [
          Text(
            "payment",
            style: TextStyleClass.semiStyle(),
          ),
          Row(children: <Widget>[...List.generate(3,(index)=>myprovider.radio[index])],)
        ],
      ),
    );
  }
}
