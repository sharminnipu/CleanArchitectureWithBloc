part of 'activity_bloc.dart';
abstract class ActivityState extends Equatable {
  const ActivityState();
}

class ActivityStateLoadingState extends ActivityState {
  @override
  List<Object> get props => [];
}

class ActivityStateLoadedState extends ActivityState {
  final String activityName;
  final String activityType;
  final int participants;

  ActivityStateLoadedState(this.activityName,
      this.activityType, this.participants);
  @override
  List<Object?> get props => [activityName, activityType, participants];
}

class ActivityError extends ActivityState{
  final String message;

  ActivityError({required this.message});

  @override
  List<Object?> get props => [];

}

class ActivityNoInternetState extends ActivityState {
  @override
  List<Object?> get props => [];
}