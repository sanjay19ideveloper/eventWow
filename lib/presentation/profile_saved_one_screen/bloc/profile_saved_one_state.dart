// ignore_for_file: must_be_immutable

part of 'profile_saved_one_bloc.dart';

/// Represents the state of ProfileSavedOne in the application.
class ProfileSavedOneState extends Equatable {
  ProfileSavedOneState({this.profileSavedOneModelObj});

  ProfileSavedOneModel? profileSavedOneModelObj;

  @override
  List<Object?> get props => [
        profileSavedOneModelObj,
      ];
  ProfileSavedOneState copyWith(
      {ProfileSavedOneModel? profileSavedOneModelObj}) {
    return ProfileSavedOneState(
      profileSavedOneModelObj:
          profileSavedOneModelObj ?? this.profileSavedOneModelObj,
    );
  }
}
