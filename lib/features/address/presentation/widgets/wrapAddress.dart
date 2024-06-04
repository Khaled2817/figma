import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/features/address/presentation/provider/addressesProvider.dart';


class WrapAddress extends StatelessWidget {
  const WrapAddress({super.key});

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<AddressesProvider>(context);
    return SizedBox(
      width: 100.w,
      child: Wrap(
        runSpacing: 2.h,
        alignment: WrapAlignment.spaceBetween,
        children: <Widget>[
          ...List.generate(
              myProvider.addresslist.length,
              (index) =>myProvider.addresslist[index])
        ],
      ),
    );
  }
}
