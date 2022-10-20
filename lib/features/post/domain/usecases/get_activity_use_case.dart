import 'package:architecture/core/error/failure.dart';
import 'package:architecture/core/usecase/usecase.dart';
import 'package:architecture/features/post/domain/repositories/activity_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:architecture/features/post/domain/entities/activity_response.dart';

class GetActivityUseCase implements UseCase<ActivityResponse,Params>{
  final ActivityRepository activityRepository;

  GetActivityUseCase(this.activityRepository);

  @override
  Future<Either<Failure,ActivityResponse>> call(
      Params params
      )async{
    return await activityRepository.getActivity();
  }

}

class Params extends Equatable {
  Params();

  @override
  List<Object?> get props => [];

}