import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:untitled/features/banner/domain/entities/bannar_entities.dart';
import 'package:untitled/features/banner/domain/repositories/banner_repo.dart';

class BannerUseCase{

BannerRepo bannerRepo;
BannerUseCase(this.bannerRepo);
Future<Either<DioException,List<BannerEntity>>>getnearbanners(Map<String,dynamic>data)async{
  return await bannerRepo.getnearbanners(data);
}
}
