import 'package:flutter/material.dart';
import 'package:untitled/features/home/presentation/widgets/sub_catigories.dart';

class WrapSubCategoriesWidgets extends StatelessWidget {
  const WrapSubCategoriesWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(children: <Widget>[
...List.generate(8, (index) => SubCategoriesWidget())
    ],);
  }
}