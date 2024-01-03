// ignore_for_file: must_be_immutable

part of 'invites_wedding_cards_bloc.dart';

/// Represents the state of InvitesWeddingCards in the application.
class InvitesWeddingCardsState extends Equatable {
  InvitesWeddingCardsState({this.invitesWeddingCardsModelObj});

  InvitesWeddingCardsModel? invitesWeddingCardsModelObj;

  @override
  List<Object?> get props => [
        invitesWeddingCardsModelObj,
      ];
  InvitesWeddingCardsState copyWith(
      {InvitesWeddingCardsModel? invitesWeddingCardsModelObj}) {
    return InvitesWeddingCardsState(
      invitesWeddingCardsModelObj:
          invitesWeddingCardsModelObj ?? this.invitesWeddingCardsModelObj,
    );
  }
}
