import 'package:architecture/core/networkInfo/network_info.dart';
import 'package:architecture/features/post/data/datasource/activity_remote_datasource.dart';
import 'package:architecture/features/post/data/repositoriesImpl/activity_repository_impl.dart';
import 'package:architecture/features/post/domain/repositories/activity_repository.dart';
import 'package:architecture/features/post/domain/usecases/get_activity_use_case.dart';
import 'package:architecture/features/post/presentation/bloc/activity_bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

final sl=GetIt.instance;

Future<void>init() async{

 // Feature -Bloc
  sl.registerFactory(() =>ActivityBloc(
      getActivityUseCase:sl()));
 //use case
  sl.registerLazySingleton(() => GetActivityUseCase(sl()));
//repository
  sl.registerLazySingleton<ActivityRepository>(()=>ActivityRepositoryImp(
      activityRemoteDataSource: sl(),
      networkInfo: sl(),));
  //data sources
  sl.registerLazySingleton<ActivityRemoteDataSource>(() =>ActivityRemoteDataSourceImpl());

  //Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImp(sl()));
  //External
  sl.registerLazySingleton(() => InternetConnectionChecker());
  sl.registerLazySingleton(() => Connectivity());
}