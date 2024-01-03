// ignore_for_file: must_be_immutable

part of 'verification_one_bloc.dart';

/// Represents the state of VerificationOne in the application.
class VerificationOneState extends Equatable {
  VerificationOneState({this.verificationOneModelObj});

  VerificationOneModel? verificationOneModelObj;

  @override
  List<Object?> get props => [
        verificationOneModelObj,
      ];
  VerificationOneState copyWith(
      {VerificationOneModel? verificationOneModelObj}) {
    return VerificationOneState(
      verificationOneModelObj:
          verificationOneModelObj ?? this.verificationOneModelObj,
    );
  }
}
