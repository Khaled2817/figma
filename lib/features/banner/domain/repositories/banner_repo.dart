import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:untitled/features/banner/domain/entities/bannar_entities.dart';

abstract class BannerRepo{
Future<Either<DioException,List<BannerEntity>>>getnearbanners(Map<String,dynamic>data);
}