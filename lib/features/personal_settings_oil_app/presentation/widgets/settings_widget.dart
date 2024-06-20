import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/svg_widget.dart';
import 'package:untitled/features/personal_settings_oil_app/presentation/provider/personal_provider_oil.dart';
import 'package:untitled/features/personal_settings_oil_app/presentation/widgets/list_setting_widget.dart';

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var myprovider = Provider.of<PersonalProviderOil>(context);
    return Column(
      children: <Widget>[
        ...List.generate(
            myprovider.perosnalOilModelList.length,
            (index) => ListSettingWidget(
                  index: index,
                )),
                SizedBox(height: 6.h,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgWidget(svg: Images.pp11),
            SizedBox(width: 2.w,),
            Text(
              "تسجيل خروج",
              style: TextStyleClass.headStyle(color: Color(0xffE3BB47)),
            )
          ],
        )
      ],
    );
  }
}
