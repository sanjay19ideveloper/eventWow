// ignore_for_file: must_be_immutable

part of 'location_access_bloc.dart';

/// Represents the state of LocationAccess in the application.
class LocationAccessState extends Equatable {
  LocationAccessState({
    this.searchController,
    this.locationAccessModelObj,
  });

  TextEditingController? searchController;

  LocationAccessModel? locationAccessModelObj;

  @override
  List<Object?> get props => [
        searchController,
        locationAccessModelObj,
      ];
  LocationAccessState copyWith({
    TextEditingController? searchController,
    LocationAccessModel? locationAccessModelObj,
  }) {
    return LocationAccessState(
      searchController: searchController ?? this.searchController,
      locationAccessModelObj:
          locationAccessModelObj ?? this.locationAccessModelObj,
    );
  }
}
