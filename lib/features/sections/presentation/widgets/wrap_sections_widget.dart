import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/features/sections/presentation/provider/provider_sections.dart';
import 'package:untitled/features/sections/presentation/widgets/conatiner_widget_list3.dart';

class WrapSectionsWidget extends StatelessWidget {
  const WrapSectionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var myprovider=Provider.of<ProviderSections>(context);
    return SizedBox(width: 100.w,
    child: Wrap(
        runSpacing: 2.h,
        alignment: WrapAlignment.spaceBetween,
        children: <Widget>[
          ...List.generate(
              myprovider.departmentModellist3.length,
              (index) => ContainerWidgetList3(index: index,))
        ],
      )
    );
  }
}