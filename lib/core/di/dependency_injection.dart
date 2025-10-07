import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:quraankareem/core/networking/api_service.dart';
import 'package:quraankareem/core/networking/dio_factory.dart';
import 'package:quraankareem/features/home/data/repos/ayaat_repo.dart';
import 'package:quraankareem/features/home/logic/cubit/ayaat_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio =  DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // Home
  getIt.registerLazySingleton<AyaatRepo>(() => AyaatRepo(getIt()));
  getIt.registerLazySingleton<AyaatCubit>(() => AyaatCubit(getIt()));
}