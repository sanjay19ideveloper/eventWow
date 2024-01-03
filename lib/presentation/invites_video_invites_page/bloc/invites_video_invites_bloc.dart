import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/fairylightsgrid_item_model.dart';
import 'package:sanjay_s_application2/presentation/invites_video_invites_page/models/invites_video_invites_model.dart';
part 'invites_video_invites_event.dart';
part 'invites_video_invites_state.dart';

/// A bloc that manages the state of a InvitesVideoInvites according to the event that is dispatched to it.
class InvitesVideoInvitesBloc
    extends Bloc<InvitesVideoInvitesEvent, InvitesVideoInvitesState> {
  InvitesVideoInvitesBloc(InvitesVideoInvitesState initialState)
      : super(initialState) {
    on<InvitesVideoInvitesInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InvitesVideoInvitesInitialEvent event,
    Emitter<InvitesVideoInvitesState> emit,
  ) async {
    emit(state.copyWith(
        invitesVideoInvitesModelObj:
            state.invitesVideoInvitesModelObj?.copyWith(
      fairylightsgridItemList: fillFairylightsgridItemList(),
    )));
  }

  List<FairylightsgridItemModel> fillFairylightsgridItemList() {
    return [
      FairylightsgridItemModel(
          fairyLightsImage: ImageConstant.imgRectangle4263170x161,
          fairyLightsText: "Fairy lights"),
      FairylightsgridItemModel(
          fairyLightsImage: ImageConstant.imgRectangle4262170x161,
          fairyLightsText: "Loving paradise"),
      FairylightsgridItemModel(
          fairyLightsImage: ImageConstant.imgRectangle42592,
          fairyLightsText: "Shaalimar"),
      FairylightsgridItemModel(
          fairyLightsImage: ImageConstant.imgRectangle42581,
          fairyLightsText: "Loving Paradise"),
      FairylightsgridItemModel(
          fairyLightsImage: ImageConstant.imgRectangle42613,
          fairyLightsText: "Petals of love"),
      FairylightsgridItemModel(
          fairyLightsImage: ImageConstant.imgRectangle42601,
          fairyLightsText: "Fairy lights")
    ];
  }
}
