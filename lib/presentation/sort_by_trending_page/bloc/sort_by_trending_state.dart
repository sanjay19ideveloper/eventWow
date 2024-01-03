// ignore_for_file: must_be_immutable

part of 'sort_by_trending_bloc.dart';

/// Represents the state of SortByTrending in the application.
class SortByTrendingState extends Equatable {
  SortByTrendingState({this.sortByTrendingModelObj});

  SortByTrendingModel? sortByTrendingModelObj;

  @override
  List<Object?> get props => [
        sortByTrendingModelObj,
      ];
  SortByTrendingState copyWith({SortByTrendingModel? sortByTrendingModelObj}) {
    return SortByTrendingState(
      sortByTrendingModelObj:
          sortByTrendingModelObj ?? this.sortByTrendingModelObj,
    );
  }
}
