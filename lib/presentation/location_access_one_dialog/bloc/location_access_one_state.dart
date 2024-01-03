// ignore_for_file: must_be_immutable

part of 'location_access_one_bloc.dart';

/// Represents the state of LocationAccessOne in the application.
class LocationAccessOneState extends Equatable {
  LocationAccessOneState({this.locationAccessOneModelObj});

  LocationAccessOneModel? locationAccessOneModelObj;

  @override
  List<Object?> get props => [
        locationAccessOneModelObj,
      ];
  LocationAccessOneState copyWith(
      {LocationAccessOneModel? locationAccessOneModelObj}) {
    return LocationAccessOneState(
      locationAccessOneModelObj:
          locationAccessOneModelObj ?? this.locationAccessOneModelObj,
    );
  }
}
