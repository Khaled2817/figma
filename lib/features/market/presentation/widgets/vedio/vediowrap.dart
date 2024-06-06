import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/features/market/presentation/provider/provider.dart';

class CardWrapVedio extends StatelessWidget {
  const CardWrapVedio({super.key});

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<MarketProvider>(context);
    return SizedBox(
      width: 100.w,
      child: Wrap(
        runSpacing: 2.h,
        alignment: WrapAlignment.spaceAround,
        children: <Widget>[
          ...List.generate(
             myProvider.vediolist.length,
              (index) => InkWell(
                  onTap: () {
                    // navP(ProductName());
                  },
                  child: Material(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2.w)),
                    child: Container(
                        width: 30.w,
                        height: 20.h,
                        // padding: appPadding,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2.w),
                          image: DecorationImage(
                              image: myProvider.vediolist[index].containerimage,
                              fit: BoxFit.cover),
                        ),
                        child: Container(
                          margin: EdgeInsets.only(bottom: 2.w),
                          alignment: Alignment.bottomLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                width: 1.w,
                              ),
                              Image(image: myProvider.vediolist[index].image),
                              SizedBox(
                                width: 1.h,
                              ),
                              Text(
                                myProvider.vediolist[index].text,
                                style: TextStyleClass.normalBoldStyle(
                                    color: Colors.white),
                              )
                            ],
                          ),
                        )),
                  )))
        ],
      ),
    );
  }
}
