import 'package:equatable/equatable.dart';
abstract class Failure extends Equatable{
  const Failure([List properties=const <dynamic> [] ]);

}
class ServerFailure extends Failure{
  // ModelErrorResponse? modelErrorResponse;
  // ServerFailure({this.modelErrorResponse});
  @override
  // TODO: implement props
  List<Object?> get props => [];

}
class CacheFailure extends Failure{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
class NoInterNet extends Failure{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}