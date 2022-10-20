import 'package:architecture/core/error/failure.dart';
import 'package:architecture/features/post/domain/usecases/get_activity_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'activity_event.dart';
part 'activity_state.dart';

class ActivityBloc extends Bloc<ActivityEvent, ActivityState> {
  final GetActivityUseCase getActivityUseCase;


  ActivityBloc(this.getActivityUseCase) : super(ActivityStateLoadingState()) {


    on<LoadApiEvent>((event, emit) async {
      emit(ActivityStateLoadingState());
      final result=await getActivityUseCase(Params());
      result.fold(
              (failure) =>emit(ActivityError(message:_mapFailureToMessage(failure))) ,
              (result) => emit(ActivityStateLoadedState(result.activity!,result.type!,result.participants!)));
    });

  }

  String _mapFailureToMessage(Failure failure){

    switch(failure.runtimeType){
      case ServerFailure:
        return "Server Failure";
      case CacheFailure:
        return "Cache Failure";
      default:
        return 'Unexpected error';
    }
  }
}

