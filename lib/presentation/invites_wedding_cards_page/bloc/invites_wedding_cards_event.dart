// ignore_for_file: must_be_immutable

part of 'invites_wedding_cards_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InvitesWeddingCards widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InvitesWeddingCardsEvent extends Equatable {}

/// Event that is dispatched when the InvitesWeddingCards widget is first created.
class InvitesWeddingCardsInitialEvent extends InvitesWeddingCardsEvent {
  @override
  List<Object?> get props => [];
}
