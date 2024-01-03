// ignore_for_file: must_be_immutable

part of 'invites_wedding_cards_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InvitesWeddingCardsTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InvitesWeddingCardsTabContainerEvent extends Equatable {}

/// Event that is dispatched when the InvitesWeddingCardsTabContainer widget is first created.
class InvitesWeddingCardsTabContainerInitialEvent
    extends InvitesWeddingCardsTabContainerEvent {
  @override
  List<Object?> get props => [];
}
