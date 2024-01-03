// ignore_for_file: must_be_immutable

part of 'humburger_bloc.dart';

/// Represents the state of Humburger in the application.
class HumburgerState extends Equatable {
  HumburgerState({this.humburgerModelObj});

  HumburgerModel? humburgerModelObj;

  @override
  List<Object?> get props => [
        humburgerModelObj,
      ];
  HumburgerState copyWith({HumburgerModel? humburgerModelObj}) {
    return HumburgerState(
      humburgerModelObj: humburgerModelObj ?? this.humburgerModelObj,
    );
  }
}
