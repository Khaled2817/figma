import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:untitled/features/banner/domain/entities/bannar_entities.dart';
import 'package:untitled/features/banner/domain/usecases/banner_use_case.dart';
import 'package:untitled/injection_container.dart';

class BannerProvider extends ChangeNotifier{
  List<BannerEntity>? bannersList;
  int index=0;
  void changeIndex(int index){
    this.index=index;
    notifyListeners();
  }
Future getnearbanners()async{
Map<String,dynamic> data={};
data['lat']=0;
data['lng']=0;
data['page']=1;
print("this my data map for addBanner $data");
Either<DioException, List<BannerEntity>>response=await BannerUseCase(sl()).getnearbanners(data);
response.fold((l){print("خطاء"+l.toString());}, (r){
bannersList=r;
notifyListeners();
});
}

}