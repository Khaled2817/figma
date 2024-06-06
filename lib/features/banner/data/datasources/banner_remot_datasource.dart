import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:untitled/core/helper_function/api.dart';
import 'package:untitled/features/banner/data/models/bannermodel.dart';

class BannerRemotDataSource {

static Future <Either<DioException,List<BannerModel>>>getnearbanners(Map<String,dynamic>data)async{
  var response = await ApiHandle.getInstance.post("guest/get_banners", data);
  return response.fold((l) => left(l), (r){
    List<BannerModel>bannerlist=[];
  for(var i in r.data['data']){
    bannerlist.add(BannerModel.fromjson(i));
  }
  return Right(bannerlist);
  });
}



}

