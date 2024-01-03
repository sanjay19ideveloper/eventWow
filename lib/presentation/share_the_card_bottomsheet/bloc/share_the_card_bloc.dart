import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/share_the_card_bottomsheet/models/share_the_card_model.dart';
part 'share_the_card_event.dart';
part 'share_the_card_state.dart';

/// A bloc that manages the state of a ShareTheCard according to the event that is dispatched to it.
class ShareTheCardBloc extends Bloc<ShareTheCardEvent, ShareTheCardState> {
  ShareTheCardBloc(ShareTheCardState initialState) : super(initialState) {
    on<ShareTheCardInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ShareTheCardInitialEvent event,
    Emitter<ShareTheCardState> emit,
  ) async {
    emit(state.copyWith(
      messageController: TextEditingController(),
    ));
  }
}
