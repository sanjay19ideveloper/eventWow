// ignore_for_file: must_be_immutable

part of 'edit_page_three_bloc.dart';

/// Represents the state of EditPageThree in the application.
class EditPageThreeState extends Equatable {
  EditPageThreeState({this.editPageThreeModelObj});

  EditPageThreeModel? editPageThreeModelObj;

  @override
  List<Object?> get props => [
        editPageThreeModelObj,
      ];
  EditPageThreeState copyWith({EditPageThreeModel? editPageThreeModelObj}) {
    return EditPageThreeState(
      editPageThreeModelObj:
          editPageThreeModelObj ?? this.editPageThreeModelObj,
    );
  }
}
