import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:sanjay_s_application2/presentation/buy_card_failed_dialog/models/buy_card_failed_model.dart';part 'buy_card_failed_event.dart';part 'buy_card_failed_state.dart';/// A bloc that manages the state of a BuyCardFailed according to the event that is dispatched to it.
class BuyCardFailedBloc extends Bloc<BuyCardFailedEvent, BuyCardFailedState> {BuyCardFailedBloc(BuyCardFailedState initialState) : super(initialState) { on<BuyCardFailedInitialEvent>(_onInitialize); }

_onInitialize(BuyCardFailedInitialEvent event, Emitter<BuyCardFailedState> emit, ) async  {  } 
 }
