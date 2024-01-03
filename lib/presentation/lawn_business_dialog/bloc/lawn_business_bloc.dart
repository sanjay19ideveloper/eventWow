import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:sanjay_s_application2/presentation/lawn_business_dialog/models/lawn_business_model.dart';part 'lawn_business_event.dart';part 'lawn_business_state.dart';/// A bloc that manages the state of a LawnBusiness according to the event that is dispatched to it.
class LawnBusinessBloc extends Bloc<LawnBusinessEvent, LawnBusinessState> {LawnBusinessBloc(LawnBusinessState initialState) : super(initialState) { on<LawnBusinessInitialEvent>(_onInitialize); }

_onInitialize(LawnBusinessInitialEvent event, Emitter<LawnBusinessState> emit, ) async  {  } 
 }
