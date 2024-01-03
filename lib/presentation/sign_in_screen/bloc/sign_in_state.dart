// ignore_for_file: must_be_immutable

part of 'sign_in_bloc.dart';

/// Represents the state of SignIn in the application.
class SignInState extends Equatable {
  SignInState({
    this.mobileNumberController,
    this.isSelectedSwitch = false,
    this.signInModelObj,
  });

  TextEditingController? mobileNumberController;

  SignInModel? signInModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        mobileNumberController,
        isSelectedSwitch,
        signInModelObj,
      ];
  SignInState copyWith({
    TextEditingController? mobileNumberController,
    bool? isSelectedSwitch,
    SignInModel? signInModelObj,
  }) {
    return SignInState(
      mobileNumberController:
          mobileNumberController ?? this.mobileNumberController,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      signInModelObj: signInModelObj ?? this.signInModelObj,
    );
  }
}
