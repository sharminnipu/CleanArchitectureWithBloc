import 'package:architecture/core/error/failure.dart';
import 'package:architecture/features/post/domain/entities/activity_response.dart';
import 'package:dartz/dartz.dart';

abstract class ActivityRepository {
  Future<Either<Failure,ActivityResponse>>getActivity();


}