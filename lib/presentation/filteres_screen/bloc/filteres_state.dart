// ignore_for_file: must_be_immutable

part of 'filteres_bloc.dart';

/// Represents the state of Filteres in the application.
class FilteresState extends Equatable {
  FilteresState({this.filteresModelObj});

  FilteresModel? filteresModelObj;

  @override
  List<Object?> get props => [
        filteresModelObj,
      ];
  FilteresState copyWith({FilteresModel? filteresModelObj}) {
    return FilteresState(
      filteresModelObj: filteresModelObj ?? this.filteresModelObj,
    );
  }
}
