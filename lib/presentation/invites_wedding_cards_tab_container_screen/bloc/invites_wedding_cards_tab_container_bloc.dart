import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/invites_wedding_cards_tab_container_screen/models/invites_wedding_cards_tab_container_model.dart';
part 'invites_wedding_cards_tab_container_event.dart';
part 'invites_wedding_cards_tab_container_state.dart';

/// A bloc that manages the state of a InvitesWeddingCardsTabContainer according to the event that is dispatched to it.
class InvitesWeddingCardsTabContainerBloc extends Bloc<
    InvitesWeddingCardsTabContainerEvent,
    InvitesWeddingCardsTabContainerState> {
  InvitesWeddingCardsTabContainerBloc(
      InvitesWeddingCardsTabContainerState initialState)
      : super(initialState) {
    on<InvitesWeddingCardsTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InvitesWeddingCardsTabContainerInitialEvent event,
    Emitter<InvitesWeddingCardsTabContainerState> emit,
  ) async {}
}
