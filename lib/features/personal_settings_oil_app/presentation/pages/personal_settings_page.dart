import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/features/car_home/presentation/widgets/appBar_widget.dart';
import 'package:untitled/features/personal_settings_oil_app/presentation/widgets/settings_widget.dart';

class PersonalSettingsPage extends StatelessWidget {
  const PersonalSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        elevation: 0,
        toolbarHeight: 10.h,
        actions: [AppbarWidgett()]),
      body: Container(
        padding: appPadding,
        height: 100.h,
        width: 100.w,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SettingsWidget()
            ],
          ),
        ),
      ),
    );
  }
}
