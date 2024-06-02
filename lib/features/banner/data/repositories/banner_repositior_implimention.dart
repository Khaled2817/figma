import 'package:dartz/dartz.dart';
import 'package:dio/src/dio_exception.dart';
import 'package:untitled/features/banner/data/datasources/banner_remot_datasource.dart';
import 'package:untitled/features/banner/domain/entities/bannar_entities.dart';
import 'package:untitled/features/banner/domain/repositories/banner_repo.dart';

class BannerRepoImplimention implements BannerRepo{
  @override
  Future<Either<DioException, List<BannerEntity>>> getnearbanners(Map<String, dynamic> data)async {

    return await BannerRemotDataSource.getnearbanners(data);

  }


}