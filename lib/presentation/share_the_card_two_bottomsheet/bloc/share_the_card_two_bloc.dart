import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/share_the_card_two_bottomsheet/models/share_the_card_two_model.dart';
part 'share_the_card_two_event.dart';
part 'share_the_card_two_state.dart';

/// A bloc that manages the state of a ShareTheCardTwo according to the event that is dispatched to it.
class ShareTheCardTwoBloc
    extends Bloc<ShareTheCardTwoEvent, ShareTheCardTwoState> {
  ShareTheCardTwoBloc(ShareTheCardTwoState initialState) : super(initialState) {
    on<ShareTheCardTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ShareTheCardTwoInitialEvent event,
    Emitter<ShareTheCardTwoState> emit,
  ) async {}
}
