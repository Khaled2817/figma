import 'package:flutter/material.dart';
import 'package:untitled/core/helper_function/navigation.dart';
import 'package:untitled/features/address/presentation/pages/addressesPage.dart';
import 'package:untitled/features/address/presentation/widgets/contaierAddress.dart';
class AddressesProvider extends ChangeNotifier{
  List <Widget> addresslist=[
const AddressesContaire(),
];
void goToAddresssesPage(){
navP(const AddressesPage());
}
void addAddress(){
addresslist.add(const AddressesContaire());
notifyListeners();
}
void removeAddress(){
addresslist.remove(const AddressesContaire());
notifyListeners();
}
}
