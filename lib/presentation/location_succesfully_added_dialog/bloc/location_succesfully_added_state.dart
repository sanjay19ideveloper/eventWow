// ignore_for_file: must_be_immutable

part of 'location_succesfully_added_bloc.dart';

/// Represents the state of LocationSuccesfullyAdded in the application.
class LocationSuccesfullyAddedState extends Equatable {
  LocationSuccesfullyAddedState({this.locationSuccesfullyAddedModelObj});

  LocationSuccesfullyAddedModel? locationSuccesfullyAddedModelObj;

  @override
  List<Object?> get props => [
        locationSuccesfullyAddedModelObj,
      ];
  LocationSuccesfullyAddedState copyWith(
      {LocationSuccesfullyAddedModel? locationSuccesfullyAddedModelObj}) {
    return LocationSuccesfullyAddedState(
      locationSuccesfullyAddedModelObj: locationSuccesfullyAddedModelObj ??
          this.locationSuccesfullyAddedModelObj,
    );
  }
}
