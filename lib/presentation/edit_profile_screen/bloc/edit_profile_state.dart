// ignore_for_file: must_be_immutable

part of 'edit_profile_bloc.dart';

/// Represents the state of EditProfile in the application.
class EditProfileState extends Equatable {
  EditProfileState({
    this.mobilevalueController,
    this.editProfileModelObj,
  });

  TextEditingController? mobilevalueController;

  EditProfileModel? editProfileModelObj;

  @override
  List<Object?> get props => [
        mobilevalueController,
        editProfileModelObj,
      ];
  EditProfileState copyWith({
    TextEditingController? mobilevalueController,
    EditProfileModel? editProfileModelObj,
  }) {
    return EditProfileState(
      mobilevalueController:
          mobilevalueController ?? this.mobilevalueController,
      editProfileModelObj: editProfileModelObj ?? this.editProfileModelObj,
    );
  }
}
