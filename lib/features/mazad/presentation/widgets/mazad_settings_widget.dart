import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/svg_widget.dart';
import 'package:untitled/features/mazad/presentation/provider/mazad_provider.dart';
import 'package:untitled/features/mazad/presentation/widgets/container_widget.dart';
import 'package:untitled/features/mazad/presentation/widgets/row_settings_widget.dart';

class MazadSettingsWidget extends StatelessWidget {
  const MazadSettingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var myprovider = Provider.of<MazadProvidersetting>(context);
    return Column(
          children: <Widget>[
           ContainerWidget(),
            SizedBox(height: 7.h,),
          ...List.generate(
                myprovider.settingsModellist.length,
                (index) => RowSettingsWidget(index: index,)
                    )
          ],
        );
  }
}
