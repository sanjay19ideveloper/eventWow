// ignore_for_file: must_be_immutable

part of 'lawn_business_four_bloc.dart';

/// Represents the state of LawnBusinessFour in the application.
class LawnBusinessFourState extends Equatable {
  LawnBusinessFourState({this.lawnBusinessFourModelObj});

  LawnBusinessFourModel? lawnBusinessFourModelObj;

  @override
  List<Object?> get props => [
        lawnBusinessFourModelObj,
      ];
  LawnBusinessFourState copyWith(
      {LawnBusinessFourModel? lawnBusinessFourModelObj}) {
    return LawnBusinessFourState(
      lawnBusinessFourModelObj:
          lawnBusinessFourModelObj ?? this.lawnBusinessFourModelObj,
    );
  }
}
