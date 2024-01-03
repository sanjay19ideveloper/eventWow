// ignore_for_file: must_be_immutable

part of 'language_bloc.dart';

/// Represents the state of Language in the application.
class LanguageState extends Equatable {
  LanguageState({
    this.searchController,
    this.suggested = "",
    this.radioGroup = "",
    this.bengali = "",
    this.radioGroup1 = "",
    this.languageModelObj,
  });

  TextEditingController? searchController;

  LanguageModel? languageModelObj;

  String suggested;

  String radioGroup;

  String bengali;

  String radioGroup1;

  @override
  List<Object?> get props => [
        searchController,
        suggested,
        radioGroup,
        bengali,
        radioGroup1,
        languageModelObj,
      ];
  LanguageState copyWith({
    TextEditingController? searchController,
    String? suggested,
    String? radioGroup,
    String? bengali,
    String? radioGroup1,
    LanguageModel? languageModelObj,
  }) {
    return LanguageState(
      searchController: searchController ?? this.searchController,
      suggested: suggested ?? this.suggested,
      radioGroup: radioGroup ?? this.radioGroup,
      bengali: bengali ?? this.bengali,
      radioGroup1: radioGroup1 ?? this.radioGroup1,
      languageModelObj: languageModelObj ?? this.languageModelObj,
    );
  }
}
