// ignore_for_file: must_be_immutable

part of 'edit_page_six_bloc.dart';

/// Represents the state of EditPageSix in the application.
class EditPageSixState extends Equatable {
  EditPageSixState({this.editPageSixModelObj});

  EditPageSixModel? editPageSixModelObj;

  @override
  List<Object?> get props => [
        editPageSixModelObj,
      ];
  EditPageSixState copyWith({EditPageSixModel? editPageSixModelObj}) {
    return EditPageSixState(
      editPageSixModelObj: editPageSixModelObj ?? this.editPageSixModelObj,
    );
  }
}
