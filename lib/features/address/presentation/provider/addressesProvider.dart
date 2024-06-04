import 'package:flutter/material.dart';
import 'package:untitled/core/helper_funct/navigation.dart';
import 'package:untitled/features/address/presentation/pages/addressesPage.dart';
import 'package:untitled/features/address/presentation/widgets/contaierAddress.dart';
class AddressesProvider extends ChangeNotifier{
  List <Widget> addresslist=[
AddressesContaire(),
];
void goToAddresssesPage(){
navP(AddressesPage());
}
void addAddress(){
addresslist.add(AddressesContaire());
notifyListeners();
}
void removeAddress(){
addresslist.remove(AddressesContaire());
notifyListeners();
}
}
