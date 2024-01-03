// ignore_for_file: must_be_immutable

part of 'lawn_business_five_tab_container_bloc.dart';

/// Represents the state of LawnBusinessFiveTabContainer in the application.
class LawnBusinessFiveTabContainerState extends Equatable {
  LawnBusinessFiveTabContainerState({
    this.enterhereController,
    this.enterhereController1,
    this.enterhereController2,
    this.lawnBusinessFiveTabContainerModelObj,
  });

  TextEditingController? enterhereController;

  TextEditingController? enterhereController1;

  TextEditingController? enterhereController2;

  LawnBusinessFiveTabContainerModel? lawnBusinessFiveTabContainerModelObj;

  @override
  List<Object?> get props => [
        enterhereController,
        enterhereController1,
        enterhereController2,
        lawnBusinessFiveTabContainerModelObj,
      ];
  LawnBusinessFiveTabContainerState copyWith({
    TextEditingController? enterhereController,
    TextEditingController? enterhereController1,
    TextEditingController? enterhereController2,
    LawnBusinessFiveTabContainerModel? lawnBusinessFiveTabContainerModelObj,
  }) {
    return LawnBusinessFiveTabContainerState(
      enterhereController: enterhereController ?? this.enterhereController,
      enterhereController1: enterhereController1 ?? this.enterhereController1,
      enterhereController2: enterhereController2 ?? this.enterhereController2,
      lawnBusinessFiveTabContainerModelObj:
          lawnBusinessFiveTabContainerModelObj ??
              this.lawnBusinessFiveTabContainerModelObj,
    );
  }
}
