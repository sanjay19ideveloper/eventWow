// ignore_for_file: must_be_immutable

part of 'lawn_business_four_tab_container_bloc.dart';

/// Represents the state of LawnBusinessFourTabContainer in the application.
class LawnBusinessFourTabContainerState extends Equatable {
  LawnBusinessFourTabContainerState(
      {this.lawnBusinessFourTabContainerModelObj});

  LawnBusinessFourTabContainerModel? lawnBusinessFourTabContainerModelObj;

  @override
  List<Object?> get props => [
        lawnBusinessFourTabContainerModelObj,
      ];
  LawnBusinessFourTabContainerState copyWith(
      {LawnBusinessFourTabContainerModel?
          lawnBusinessFourTabContainerModelObj}) {
    return LawnBusinessFourTabContainerState(
      lawnBusinessFourTabContainerModelObj:
          lawnBusinessFourTabContainerModelObj ??
              this.lawnBusinessFourTabContainerModelObj,
    );
  }
}
