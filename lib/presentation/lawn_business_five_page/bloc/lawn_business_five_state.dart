// ignore_for_file: must_be_immutable

part of 'lawn_business_five_bloc.dart';

/// Represents the state of LawnBusinessFive in the application.
class LawnBusinessFiveState extends Equatable {
  LawnBusinessFiveState({this.lawnBusinessFiveModelObj});

  LawnBusinessFiveModel? lawnBusinessFiveModelObj;

  @override
  List<Object?> get props => [
        lawnBusinessFiveModelObj,
      ];
  LawnBusinessFiveState copyWith(
      {LawnBusinessFiveModel? lawnBusinessFiveModelObj}) {
    return LawnBusinessFiveState(
      lawnBusinessFiveModelObj:
          lawnBusinessFiveModelObj ?? this.lawnBusinessFiveModelObj,
    );
  }
}
