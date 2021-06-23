part of 'location_cubit.dart';

abstract class LocationState extends Equatable {
  final LocationModel model;
  final bool changed;
  const LocationState({required this.model,required this.changed});
}

class LocationInitial extends LocationState {
  LocationInitial() : super(model: LocationModel("24.774265", "46.738586", ""),changed: false);

  @override
  List<Object> get props => [model,changed];
}

class LocationUpdated extends LocationState {
  LocationUpdated(LocationModel model,bool changed) : super(model: model,changed: changed);
  @override
  List<Object> get props => [model,changed];
}
