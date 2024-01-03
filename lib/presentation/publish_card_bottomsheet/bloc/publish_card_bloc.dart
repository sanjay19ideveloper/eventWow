import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/publish_card_bottomsheet/models/publish_card_model.dart';
part 'publish_card_event.dart';
part 'publish_card_state.dart';

/// A bloc that manages the state of a PublishCard according to the event that is dispatched to it.
class PublishCardBloc extends Bloc<PublishCardEvent, PublishCardState> {
  PublishCardBloc(PublishCardState initialState) : super(initialState) {
    on<PublishCardInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PublishCardInitialEvent event,
    Emitter<PublishCardState> emit,
  ) async {}
}
