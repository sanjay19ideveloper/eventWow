// ignore_for_file: must_be_immutable

part of 'edit_page_four_tab_container_bloc.dart';

/// Represents the state of EditPageFourTabContainer in the application.
class EditPageFourTabContainerState extends Equatable {
  EditPageFourTabContainerState({this.editPageFourTabContainerModelObj});

  EditPageFourTabContainerModel? editPageFourTabContainerModelObj;

  @override
  List<Object?> get props => [
        editPageFourTabContainerModelObj,
      ];
  EditPageFourTabContainerState copyWith(
      {EditPageFourTabContainerModel? editPageFourTabContainerModelObj}) {
    return EditPageFourTabContainerState(
      editPageFourTabContainerModelObj: editPageFourTabContainerModelObj ??
          this.editPageFourTabContainerModelObj,
    );
  }
}
