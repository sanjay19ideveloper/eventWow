// ignore_for_file: must_be_immutable

part of 'edit_page_four_bloc.dart';

/// Represents the state of EditPageFour in the application.
class EditPageFourState extends Equatable {
  EditPageFourState({this.editPageFourModelObj});

  EditPageFourModel? editPageFourModelObj;

  @override
  List<Object?> get props => [
        editPageFourModelObj,
      ];
  EditPageFourState copyWith({EditPageFourModel? editPageFourModelObj}) {
    return EditPageFourState(
      editPageFourModelObj: editPageFourModelObj ?? this.editPageFourModelObj,
    );
  }
}
