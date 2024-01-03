// ignore_for_file: must_be_immutable

part of 'invites_wedding_cards_tab_container_bloc.dart';

/// Represents the state of InvitesWeddingCardsTabContainer in the application.
class InvitesWeddingCardsTabContainerState extends Equatable {
  InvitesWeddingCardsTabContainerState(
      {this.invitesWeddingCardsTabContainerModelObj});

  InvitesWeddingCardsTabContainerModel? invitesWeddingCardsTabContainerModelObj;

  @override
  List<Object?> get props => [
        invitesWeddingCardsTabContainerModelObj,
      ];
  InvitesWeddingCardsTabContainerState copyWith(
      {InvitesWeddingCardsTabContainerModel?
          invitesWeddingCardsTabContainerModelObj}) {
    return InvitesWeddingCardsTabContainerState(
      invitesWeddingCardsTabContainerModelObj:
          invitesWeddingCardsTabContainerModelObj ??
              this.invitesWeddingCardsTabContainerModelObj,
    );
  }
}
