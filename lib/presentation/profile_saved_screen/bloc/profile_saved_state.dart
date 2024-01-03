// ignore_for_file: must_be_immutable

part of 'profile_saved_bloc.dart';

/// Represents the state of ProfileSaved in the application.
class ProfileSavedState extends Equatable {
  ProfileSavedState({this.profileSavedModelObj});

  ProfileSavedModel? profileSavedModelObj;

  @override
  List<Object?> get props => [
        profileSavedModelObj,
      ];
  ProfileSavedState copyWith({ProfileSavedModel? profileSavedModelObj}) {
    return ProfileSavedState(
      profileSavedModelObj: profileSavedModelObj ?? this.profileSavedModelObj,
    );
  }
}
