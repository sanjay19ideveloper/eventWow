// ignore_for_file: must_be_immutable

part of 'edit_page_eight_bloc.dart';

/// Represents the state of EditPageEight in the application.
class EditPageEightState extends Equatable {
  EditPageEightState({this.editPageEightModelObj});

  EditPageEightModel? editPageEightModelObj;

  @override
  List<Object?> get props => [
        editPageEightModelObj,
      ];
  EditPageEightState copyWith({EditPageEightModel? editPageEightModelObj}) {
    return EditPageEightState(
      editPageEightModelObj:
          editPageEightModelObj ?? this.editPageEightModelObj,
    );
  }
}
