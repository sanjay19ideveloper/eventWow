// ignore_for_file: must_be_immutable

part of 'lawn_business_three_bloc.dart';

/// Represents the state of LawnBusinessThree in the application.
class LawnBusinessThreeState extends Equatable {
  LawnBusinessThreeState({this.lawnBusinessThreeModelObj});

  LawnBusinessThreeModel? lawnBusinessThreeModelObj;

  @override
  List<Object?> get props => [
        lawnBusinessThreeModelObj,
      ];
  LawnBusinessThreeState copyWith(
      {LawnBusinessThreeModel? lawnBusinessThreeModelObj}) {
    return LawnBusinessThreeState(
      lawnBusinessThreeModelObj:
          lawnBusinessThreeModelObj ?? this.lawnBusinessThreeModelObj,
    );
  }
}
