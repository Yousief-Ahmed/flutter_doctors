import 'package:dio/dio.dart';
import 'package:flutter_doctors/core/networking/api_service.dart';
import 'package:flutter_doctors/core/networking/dio_factory.dart';
import 'package:flutter_doctors/features/login/data/repos/login_repo.dart';
import 'package:flutter_doctors/features/login/logic/login_cubit.dart';
import 'package:flutter_doctors/features/sign_up/data/repos/sign_up_repo.dart';
import 'package:flutter_doctors/features/sign_up/logic/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
Future <void> setupGetIt() async {
  //Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService> (() => ApiService(dio));

  //Login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  //Signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));

}