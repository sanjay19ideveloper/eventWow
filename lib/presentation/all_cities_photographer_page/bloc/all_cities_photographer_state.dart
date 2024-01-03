// ignore_for_file: must_be_immutable

part of 'all_cities_photographer_bloc.dart';

/// Represents the state of AllCitiesPhotographer in the application.
class AllCitiesPhotographerState extends Equatable {
  AllCitiesPhotographerState({this.allCitiesPhotographerModelObj});

  AllCitiesPhotographerModel? allCitiesPhotographerModelObj;

  @override
  List<Object?> get props => [
        allCitiesPhotographerModelObj,
      ];
  AllCitiesPhotographerState copyWith(
      {AllCitiesPhotographerModel? allCitiesPhotographerModelObj}) {
    return AllCitiesPhotographerState(
      allCitiesPhotographerModelObj:
          allCitiesPhotographerModelObj ?? this.allCitiesPhotographerModelObj,
    );
  }
}
