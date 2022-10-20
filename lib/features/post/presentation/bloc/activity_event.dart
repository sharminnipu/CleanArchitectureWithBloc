part of 'activity_bloc.dart';

abstract class ActivityEvent extends Equatable {
  const ActivityEvent();
}

class LoadApiEvent extends ActivityEvent {
  @override
  List<Object?> get props => [];
}

class NoInternetEvent extends ActivityEvent {
  @override
  List<Object?> get props => [];
}