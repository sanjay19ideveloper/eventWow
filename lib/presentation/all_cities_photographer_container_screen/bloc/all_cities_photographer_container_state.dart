// ignore_for_file: must_be_immutable

part of 'all_cities_photographer_container_bloc.dart';

/// Represents the state of AllCitiesPhotographerContainer in the application.
class AllCitiesPhotographerContainerState extends Equatable {
  AllCitiesPhotographerContainerState(
      {this.allCitiesPhotographerContainerModelObj});

  AllCitiesPhotographerContainerModel? allCitiesPhotographerContainerModelObj;

  @override
  List<Object?> get props => [
        allCitiesPhotographerContainerModelObj,
      ];
  AllCitiesPhotographerContainerState copyWith(
      {AllCitiesPhotographerContainerModel?
          allCitiesPhotographerContainerModelObj}) {
    return AllCitiesPhotographerContainerState(
      allCitiesPhotographerContainerModelObj:
          allCitiesPhotographerContainerModelObj ??
              this.allCitiesPhotographerContainerModelObj,
    );
  }
}
