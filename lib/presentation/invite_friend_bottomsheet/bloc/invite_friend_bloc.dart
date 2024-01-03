import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/invite_friend_bottomsheet/models/invite_friend_model.dart';
part 'invite_friend_event.dart';
part 'invite_friend_state.dart';

/// A bloc that manages the state of a InviteFriend according to the event that is dispatched to it.
class InviteFriendBloc extends Bloc<InviteFriendEvent, InviteFriendState> {
  InviteFriendBloc(InviteFriendState initialState) : super(initialState) {
    on<InviteFriendInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InviteFriendInitialEvent event,
    Emitter<InviteFriendState> emit,
  ) async {}
}
