import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/features/market/presentation/provider/provider.dart';
import 'package:untitled/features/market/presentation/widgets/header_market_name.dart';
import 'package:untitled/features/market/presentation/widgets/photo/photo_widget.dart';
import 'package:untitled/features/market/presentation/widgets/vedio/vedio_widget.dart';
class MarketPage extends StatelessWidget {
  
String? marketName;
String? marketlocation;
MarketPage({this.marketName,this.marketlocation});
  @override
  Widget build(BuildContext context) {
        var myProvider = Provider.of<MarketProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: 100.h,
        width: 100.w,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 15.h,
              ),
              HeaderMarketName(marketName,marketlocation),
              SizedBox(
                height: 2.h,
              ),
              Row(
                children: <Widget>[VedioWidget(), PhotoWidget()],
              ),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: EdgeInsets.all(2.w),
                child: myProvider.returnWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
