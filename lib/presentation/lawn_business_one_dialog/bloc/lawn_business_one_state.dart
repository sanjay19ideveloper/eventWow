// ignore_for_file: must_be_immutable

part of 'lawn_business_one_bloc.dart';

/// Represents the state of LawnBusinessOne in the application.
class LawnBusinessOneState extends Equatable {
  LawnBusinessOneState({this.lawnBusinessOneModelObj});

  LawnBusinessOneModel? lawnBusinessOneModelObj;

  @override
  List<Object?> get props => [
        lawnBusinessOneModelObj,
      ];
  LawnBusinessOneState copyWith(
      {LawnBusinessOneModel? lawnBusinessOneModelObj}) {
    return LawnBusinessOneState(
      lawnBusinessOneModelObj:
          lawnBusinessOneModelObj ?? this.lawnBusinessOneModelObj,
    );
  }
}
