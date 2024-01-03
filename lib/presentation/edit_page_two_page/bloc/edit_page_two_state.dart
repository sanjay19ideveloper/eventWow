// ignore_for_file: must_be_immutable

part of 'edit_page_two_bloc.dart';

/// Represents the state of EditPageTwo in the application.
class EditPageTwoState extends Equatable {
  EditPageTwoState({this.editPageTwoModelObj});

  EditPageTwoModel? editPageTwoModelObj;

  @override
  List<Object?> get props => [
        editPageTwoModelObj,
      ];
  EditPageTwoState copyWith({EditPageTwoModel? editPageTwoModelObj}) {
    return EditPageTwoState(
      editPageTwoModelObj: editPageTwoModelObj ?? this.editPageTwoModelObj,
    );
  }
}
