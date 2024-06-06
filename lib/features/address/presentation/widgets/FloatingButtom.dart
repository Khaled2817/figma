import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/core/helper_function/navigation.dart';
import 'package:untitled/core/widget/button_widget.dart';
import 'package:untitled/features/address/presentation/provider/addressesProvider.dart';
import 'package:untitled/features/address/presentation/widgets/addAddressPage.dart';

class FloatingButtomAddress extends StatelessWidget {
  const FloatingButtomAddress({super.key});
  @override
  Widget build(BuildContext context) {
    return ButtonWidget(
        onTap: () {
         Provider.of<AddressesProvider>(context,listen: false).addAddress();
       navP(const AddAddress());
        // دي المفروض يتم عرض الخريطة فيها بس مش شغالة
        },
        text: 'اضف عنوان جديد');
  }
}
