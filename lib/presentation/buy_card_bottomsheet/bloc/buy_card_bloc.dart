import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:sanjay_s_application2/presentation/buy_card_bottomsheet/models/buy_card_model.dart';part 'buy_card_event.dart';part 'buy_card_state.dart';/// A bloc that manages the state of a BuyCard according to the event that is dispatched to it.
class BuyCardBloc extends Bloc<BuyCardEvent, BuyCardState> {BuyCardBloc(BuyCardState initialState) : super(initialState) { on<BuyCardInitialEvent>(_onInitialize); }

_onInitialize(BuyCardInitialEvent event, Emitter<BuyCardState> emit, ) async  {  } 
 }
