// ignore_for_file: must_be_immutable

part of 'edit_page_five_tab_container_bloc.dart';

/// Represents the state of EditPageFiveTabContainer in the application.
class EditPageFiveTabContainerState extends Equatable {
  EditPageFiveTabContainerState({this.editPageFiveTabContainerModelObj});

  EditPageFiveTabContainerModel? editPageFiveTabContainerModelObj;

  @override
  List<Object?> get props => [
        editPageFiveTabContainerModelObj,
      ];
  EditPageFiveTabContainerState copyWith(
      {EditPageFiveTabContainerModel? editPageFiveTabContainerModelObj}) {
    return EditPageFiveTabContainerState(
      editPageFiveTabContainerModelObj: editPageFiveTabContainerModelObj ??
          this.editPageFiveTabContainerModelObj,
    );
  }
}
