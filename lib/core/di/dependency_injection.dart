// using get it 
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:medbok/core/networking/api_service.dart';
import 'package:medbok/core/networking/dio_factory.dart';
import 'package:medbok/features/login/data/repos/login_repo.dart';
import 'package:medbok/features/login/view_model/cubit/login_cubit.dart';

final getIt = GetIt.instance;

Future<void> setUpGetIt() async {
  // Register your dependencies here
  //Dio & ApiService

  //عشان نوفر الdio لل api service
  Dio dio =  DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(
    ()=> ApiService(dio));


  // login
  getIt.registerLazySingleton<LoginRepo>(()=> LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(()=> LoginCubit(getIt()));

  //home
  //homeRepo, homeCubit
}
