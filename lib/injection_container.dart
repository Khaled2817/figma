import 'package:get_it/get_it.dart';
import 'package:untitled/features/banner/data/repositories/banner_repositior_implimention.dart';
import 'package:untitled/features/banner/domain/repositories/banner_repo.dart';
final sl=GetIt.instance;
Future<void> initializeDependencies() async {
sl.registerSingleton<BannerRepo>(BannerRepoImplimention());
}