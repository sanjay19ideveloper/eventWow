// ignore_for_file: must_be_immutable

part of 'sort_by_new_cards_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SortByNewCards widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SortByNewCardsEvent extends Equatable {}

/// Event that is dispatched when the SortByNewCards widget is first created.
class SortByNewCardsInitialEvent extends SortByNewCardsEvent {
  @override
  List<Object?> get props => [];
}
