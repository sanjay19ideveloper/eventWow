import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/buy_card_successful_dialog/models/buy_card_successful_model.dart';
part 'buy_card_successful_event.dart';
part 'buy_card_successful_state.dart';

/// A bloc that manages the state of a BuyCardSuccessful according to the event that is dispatched to it.
class BuyCardSuccessfulBloc
    extends Bloc<BuyCardSuccessfulEvent, BuyCardSuccessfulState> {
  BuyCardSuccessfulBloc(BuyCardSuccessfulState initialState)
      : super(initialState) {
    on<BuyCardSuccessfulInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BuyCardSuccessfulInitialEvent event,
    Emitter<BuyCardSuccessfulState> emit,
  ) async {}
}
