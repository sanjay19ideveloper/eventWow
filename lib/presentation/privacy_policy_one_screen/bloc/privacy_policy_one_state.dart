// ignore_for_file: must_be_immutable

part of 'privacy_policy_one_bloc.dart';

/// Represents the state of PrivacyPolicyOne in the application.
class PrivacyPolicyOneState extends Equatable {
  PrivacyPolicyOneState({this.privacyPolicyOneModelObj});

  PrivacyPolicyOneModel? privacyPolicyOneModelObj;

  @override
  List<Object?> get props => [
        privacyPolicyOneModelObj,
      ];
  PrivacyPolicyOneState copyWith(
      {PrivacyPolicyOneModel? privacyPolicyOneModelObj}) {
    return PrivacyPolicyOneState(
      privacyPolicyOneModelObj:
          privacyPolicyOneModelObj ?? this.privacyPolicyOneModelObj,
    );
  }
}
