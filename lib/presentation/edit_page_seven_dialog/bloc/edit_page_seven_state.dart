// ignore_for_file: must_be_immutable

part of 'edit_page_seven_bloc.dart';

/// Represents the state of EditPageSeven in the application.
class EditPageSevenState extends Equatable {
  EditPageSevenState({this.editPageSevenModelObj});

  EditPageSevenModel? editPageSevenModelObj;

  @override
  List<Object?> get props => [
        editPageSevenModelObj,
      ];
  EditPageSevenState copyWith({EditPageSevenModel? editPageSevenModelObj}) {
    return EditPageSevenState(
      editPageSevenModelObj:
          editPageSevenModelObj ?? this.editPageSevenModelObj,
    );
  }
}
