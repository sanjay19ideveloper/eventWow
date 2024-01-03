// ignore_for_file: must_be_immutable

part of 'sign_out_bloc.dart';

/// Represents the state of SignOut in the application.
class SignOutState extends Equatable {
  SignOutState({this.signOutModelObj});

  SignOutModel? signOutModelObj;

  @override
  List<Object?> get props => [
        signOutModelObj,
      ];
  SignOutState copyWith({SignOutModel? signOutModelObj}) {
    return SignOutState(
      signOutModelObj: signOutModelObj ?? this.signOutModelObj,
    );
  }
}
