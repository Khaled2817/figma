import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/features/mazad/presentation/provider/mazad_provider.dart';

class RowSettingsWidget extends StatelessWidget {
  const RowSettingsWidget({super.key, required this.index});
final int index;
  @override
  Widget build(BuildContext context) {
     var myprovider = Provider.of<MazadProvidersetting>(context);
     
    return
     Padding(
       padding:  EdgeInsets.only(bottom: 5.w),
       child: Row(children: <Widget>[
                          myprovider.settingsModellist[index].widget1,
                          SizedBox(width: 2.w,),
                          InkWell(
                            onTap: (){
                              myprovider.goTo(myprovider.settingsModellist[index].text);
                            },
                            child: Text(
                              "${myprovider.settingsModellist[index].text}",
                              style: TextStyleClass.normalBoldStyle(color: Color.fromARGB(255, 149, 148, 148)),
                            ),
                          ),
                          Spacer(),
                              myprovider.settingsModellist[index].widget2
                        ]),
     );
  }
}