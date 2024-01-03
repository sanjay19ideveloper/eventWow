// ignore_for_file: must_be_immutable

part of 'help_faqs_bloc.dart';

/// Represents the state of HelpFaqs in the application.
class HelpFaqsState extends Equatable {
  HelpFaqsState({
    this.searchController,
    this.helpFaqsModelObj,
  });

  TextEditingController? searchController;

  HelpFaqsModel? helpFaqsModelObj;

  @override
  List<Object?> get props => [
        searchController,
        helpFaqsModelObj,
      ];
  HelpFaqsState copyWith({
    TextEditingController? searchController,
    HelpFaqsModel? helpFaqsModelObj,
  }) {
    return HelpFaqsState(
      searchController: searchController ?? this.searchController,
      helpFaqsModelObj: helpFaqsModelObj ?? this.helpFaqsModelObj,
    );
  }
}
