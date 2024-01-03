// ignore_for_file: must_be_immutable

part of 'terms_conditions_one_bloc.dart';

/// Represents the state of TermsConditionsOne in the application.
class TermsConditionsOneState extends Equatable {
  TermsConditionsOneState({this.termsConditionsOneModelObj});

  TermsConditionsOneModel? termsConditionsOneModelObj;

  @override
  List<Object?> get props => [
        termsConditionsOneModelObj,
      ];
  TermsConditionsOneState copyWith(
      {TermsConditionsOneModel? termsConditionsOneModelObj}) {
    return TermsConditionsOneState(
      termsConditionsOneModelObj:
          termsConditionsOneModelObj ?? this.termsConditionsOneModelObj,
    );
  }
}
