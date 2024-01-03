// ignore_for_file: must_be_immutable

part of 'sign_up_bloc.dart';

/// Represents the state of SignUp in the application.
class SignUpState extends Equatable {
  SignUpState({
    this.fullNameController,
    this.mobileNumberController,
    this.signUpModelObj,
  });

  TextEditingController? fullNameController;

  TextEditingController? mobileNumberController;

  SignUpModel? signUpModelObj;

  @override
  List<Object?> get props => [
        fullNameController,
        mobileNumberController,
        signUpModelObj,
      ];
  SignUpState copyWith({
    TextEditingController? fullNameController,
    TextEditingController? mobileNumberController,
    SignUpModel? signUpModelObj,
  }) {
    return SignUpState(
      fullNameController: fullNameController ?? this.fullNameController,
      mobileNumberController:
          mobileNumberController ?? this.mobileNumberController,
      signUpModelObj: signUpModelObj ?? this.signUpModelObj,
    );
  }
}
