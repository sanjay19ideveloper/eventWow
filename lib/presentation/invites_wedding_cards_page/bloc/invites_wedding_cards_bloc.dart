import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/gridsection_item_model.dart';
import 'package:sanjay_s_application2/presentation/invites_wedding_cards_page/models/invites_wedding_cards_model.dart';
part 'invites_wedding_cards_event.dart';
part 'invites_wedding_cards_state.dart';

/// A bloc that manages the state of a InvitesWeddingCards according to the event that is dispatched to it.
class InvitesWeddingCardsBloc
    extends Bloc<InvitesWeddingCardsEvent, InvitesWeddingCardsState> {
  InvitesWeddingCardsBloc(InvitesWeddingCardsState initialState)
      : super(initialState) {
    on<InvitesWeddingCardsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InvitesWeddingCardsInitialEvent event,
    Emitter<InvitesWeddingCardsState> emit,
  ) async {
    emit(state.copyWith(
        invitesWeddingCardsModelObj:
            state.invitesWeddingCardsModelObj?.copyWith(
      gridsectionItemList: fillGridsectionItemList(),
    )));
  }

  List<GridsectionItemModel> fillGridsectionItemList() {
    return [
      GridsectionItemModel(
          image: ImageConstant.imgRectangle42592, text: "Shaalimar"),
      GridsectionItemModel(
          image: ImageConstant.imgRectangle42581, text: "Loving Paradise"),
      GridsectionItemModel(
          image: ImageConstant.imgRectangle42613, text: "Petals of love"),
      GridsectionItemModel(
          image: ImageConstant.imgRectangle42601, text: "Fairy lights"),
      GridsectionItemModel(
          image: ImageConstant.imgRectangle4263170x161, text: "Fairy lights"),
      GridsectionItemModel(
          image: ImageConstant.imgRectangle4262170x161, text: "Loving paradise")
    ];
  }
}
