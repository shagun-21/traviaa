import 'package:equatable/equatable.dart';
import 'package:traviaa/model/data_model.dart';

abstract class CubitStates extends Equatable {}

class InitialState extends CubitStates {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class WelcomeState extends CubitStates {
  @override
  // TODO: implement props
  List<Object> get props => [];
}
class LoadingState extends CubitStates {
  @override
  // TODO: implement props
  List<Object> get props => [];
}
class LoadedState extends CubitStates {
  LoadedState(this.places);
  final List<dataModel> places;
  @override
  // TODO: implement props
  List<Object> get props => [places];
}
class DetailState extends CubitStates {
  DetailState(this.place);
  final dataModel place;
  @override
  // TODO: implement props
  List<Object> get props => [place];
}
