// ignore_for_file: must_be_immutable

part of 'edit_page_one_bloc.dart';

/// Represents the state of EditPageOne in the application.
class EditPageOneState extends Equatable {
  EditPageOneState({this.editPageOneModelObj});

  EditPageOneModel? editPageOneModelObj;

  @override
  List<Object?> get props => [
        editPageOneModelObj,
      ];
  EditPageOneState copyWith({EditPageOneModel? editPageOneModelObj}) {
    return EditPageOneState(
      editPageOneModelObj: editPageOneModelObj ?? this.editPageOneModelObj,
    );
  }
}
