// ignore_for_file: must_be_immutable

part of 'faq_bloc.dart';

/// Represents the state of Faq in the application.
class FaqState extends Equatable {
  FaqState({
    this.searchController,
    this.icon = false,
    this.faqModelObj,
  });

  TextEditingController? searchController;

  FaqModel? faqModelObj;

  bool icon;

  @override
  List<Object?> get props => [
        searchController,
        icon,
        faqModelObj,
      ];
  FaqState copyWith({
    TextEditingController? searchController,
    bool? icon,
    FaqModel? faqModelObj,
  }) {
    return FaqState(
      searchController: searchController ?? this.searchController,
      icon: icon ?? this.icon,
      faqModelObj: faqModelObj ?? this.faqModelObj,
    );
  }
}
