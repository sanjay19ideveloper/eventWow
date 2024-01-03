// ignore_for_file: must_be_immutable

part of 'lawn_business_bloc.dart';

/// Represents the state of LawnBusiness in the application.
class LawnBusinessState extends Equatable {
  LawnBusinessState({this.lawnBusinessModelObj});

  LawnBusinessModel? lawnBusinessModelObj;

  @override
  List<Object?> get props => [
        lawnBusinessModelObj,
      ];
  LawnBusinessState copyWith({LawnBusinessModel? lawnBusinessModelObj}) {
    return LawnBusinessState(
      lawnBusinessModelObj: lawnBusinessModelObj ?? this.lawnBusinessModelObj,
    );
  }
}
