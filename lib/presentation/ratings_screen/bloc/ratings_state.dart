// ignore_for_file: must_be_immutable

part of 'ratings_bloc.dart';

/// Represents the state of Ratings in the application.
class RatingsState extends Equatable {
  RatingsState({this.ratingsModelObj});

  RatingsModel? ratingsModelObj;

  @override
  List<Object?> get props => [
        ratingsModelObj,
      ];
  RatingsState copyWith({RatingsModel? ratingsModelObj}) {
    return RatingsState(
      ratingsModelObj: ratingsModelObj ?? this.ratingsModelObj,
    );
  }
}
