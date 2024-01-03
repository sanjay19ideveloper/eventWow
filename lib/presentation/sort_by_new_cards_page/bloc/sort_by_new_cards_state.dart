// ignore_for_file: must_be_immutable

part of 'sort_by_new_cards_bloc.dart';

/// Represents the state of SortByNewCards in the application.
class SortByNewCardsState extends Equatable {
  SortByNewCardsState({this.sortByNewCardsModelObj});

  SortByNewCardsModel? sortByNewCardsModelObj;

  @override
  List<Object?> get props => [
        sortByNewCardsModelObj,
      ];
  SortByNewCardsState copyWith({SortByNewCardsModel? sortByNewCardsModelObj}) {
    return SortByNewCardsState(
      sortByNewCardsModelObj:
          sortByNewCardsModelObj ?? this.sortByNewCardsModelObj,
    );
  }
}
