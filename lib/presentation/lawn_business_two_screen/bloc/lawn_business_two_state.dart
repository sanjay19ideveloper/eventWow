// ignore_for_file: must_be_immutable

part of 'lawn_business_two_bloc.dart';

/// Represents the state of LawnBusinessTwo in the application.
class LawnBusinessTwoState extends Equatable {
  LawnBusinessTwoState({this.lawnBusinessTwoModelObj});

  LawnBusinessTwoModel? lawnBusinessTwoModelObj;

  @override
  List<Object?> get props => [
        lawnBusinessTwoModelObj,
      ];
  LawnBusinessTwoState copyWith(
      {LawnBusinessTwoModel? lawnBusinessTwoModelObj}) {
    return LawnBusinessTwoState(
      lawnBusinessTwoModelObj:
          lawnBusinessTwoModelObj ?? this.lawnBusinessTwoModelObj,
    );
  }
}
