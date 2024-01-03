// ignore_for_file: must_be_immutable

part of 'all_top_selling_one_tab_container_bloc.dart';

/// Represents the state of AllTopSellingOneTabContainer in the application.
class AllTopSellingOneTabContainerState extends Equatable {
  AllTopSellingOneTabContainerState(
      {this.allTopSellingOneTabContainerModelObj});

  AllTopSellingOneTabContainerModel? allTopSellingOneTabContainerModelObj;

  @override
  List<Object?> get props => [
        allTopSellingOneTabContainerModelObj,
      ];
  AllTopSellingOneTabContainerState copyWith(
      {AllTopSellingOneTabContainerModel?
          allTopSellingOneTabContainerModelObj}) {
    return AllTopSellingOneTabContainerState(
      allTopSellingOneTabContainerModelObj:
          allTopSellingOneTabContainerModelObj ??
              this.allTopSellingOneTabContainerModelObj,
    );
  }
}
