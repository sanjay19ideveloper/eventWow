// ignore_for_file: must_be_immutable

part of 'edit_page_five_bloc.dart';

/// Represents the state of EditPageFive in the application.
class EditPageFiveState extends Equatable {
  EditPageFiveState({this.editPageFiveModelObj});

  EditPageFiveModel? editPageFiveModelObj;

  @override
  List<Object?> get props => [
        editPageFiveModelObj,
      ];
  EditPageFiveState copyWith({EditPageFiveModel? editPageFiveModelObj}) {
    return EditPageFiveState(
      editPageFiveModelObj: editPageFiveModelObj ?? this.editPageFiveModelObj,
    );
  }
}
