import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/share_the_card_one_bottomsheet/models/share_the_card_one_model.dart';
part 'share_the_card_one_event.dart';
part 'share_the_card_one_state.dart';

/// A bloc that manages the state of a ShareTheCardOne according to the event that is dispatched to it.
class ShareTheCardOneBloc
    extends Bloc<ShareTheCardOneEvent, ShareTheCardOneState> {
  ShareTheCardOneBloc(ShareTheCardOneState initialState) : super(initialState) {
    on<ShareTheCardOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ShareTheCardOneInitialEvent event,
    Emitter<ShareTheCardOneState> emit,
  ) async {}
}
