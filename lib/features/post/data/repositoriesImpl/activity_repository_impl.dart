import 'package:architecture/core/error/execptions.dart';
import 'package:architecture/core/error/failure.dart';
import 'package:architecture/core/networkInfo/network_info.dart';
import 'package:architecture/features/post/data/datasource/activity_remote_datasource.dart';
import 'package:architecture/features/post/domain/entities/activity_response.dart';
import 'package:architecture/features/post/domain/repositories/activity_repository.dart';
import 'package:dartz/dartz.dart';

class ActivityRepositoryImp implements ActivityRepository{
  final ActivityRemoteDataSource activityRemoteDataSource;
  final NetworkInfo networkInfo;

  ActivityRepositoryImp({
    required this.activityRemoteDataSource,
    required this.networkInfo});

  @override
  Future<Either<Failure, ActivityResponse>> getActivity() async {
      try{
        final remoteActivityList=await activityRemoteDataSource.getActivity();
        return Right(remoteActivityList);
      } on ServerExecption{
        return Left(ServerFailure());
      }



  }


}