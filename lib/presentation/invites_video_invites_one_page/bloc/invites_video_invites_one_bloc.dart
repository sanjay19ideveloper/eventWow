import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/fairylightsgrid1_item_model.dart';
import 'package:sanjay_s_application2/presentation/invites_video_invites_one_page/models/invites_video_invites_one_model.dart';
part 'invites_video_invites_one_event.dart';
part 'invites_video_invites_one_state.dart';

/// A bloc that manages the state of a InvitesVideoInvitesOne according to the event that is dispatched to it.
class InvitesVideoInvitesOneBloc
    extends Bloc<InvitesVideoInvitesOneEvent, InvitesVideoInvitesOneState> {
  InvitesVideoInvitesOneBloc(InvitesVideoInvitesOneState initialState)
      : super(initialState) {
    on<InvitesVideoInvitesOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InvitesVideoInvitesOneInitialEvent event,
    Emitter<InvitesVideoInvitesOneState> emit,
  ) async {
    emit(state.copyWith(
        invitesVideoInvitesOneModelObj:
            state.invitesVideoInvitesOneModelObj?.copyWith(
      fairylightsgrid1ItemList: fillFairylightsgrid1ItemList(),
    )));
  }

  List<Fairylightsgrid1ItemModel> fillFairylightsgrid1ItemList() {
    return [
      Fairylightsgrid1ItemModel(
          fairyLightsImage: ImageConstant.imgRectangle4263170x161,
          fairyLightsText: "Fairy lights"),
      Fairylightsgrid1ItemModel(
          fairyLightsImage: ImageConstant.imgRectangle4262170x161,
          fairyLightsText: "Loving paradise"),
      Fairylightsgrid1ItemModel(
          fairyLightsImage: ImageConstant.imgRectangle42592,
          fairyLightsText: "Shaalimar"),
      Fairylightsgrid1ItemModel(
          fairyLightsImage: ImageConstant.imgRectangle42581,
          fairyLightsText: "Loving Paradise"),
      Fairylightsgrid1ItemModel(
          fairyLightsImage: ImageConstant.imgRectangle42613,
          fairyLightsText: "Petals of love"),
      Fairylightsgrid1ItemModel(
          fairyLightsImage: ImageConstant.imgRectangle42601,
          fairyLightsText: "Fairy lights")
    ];
  }
}
