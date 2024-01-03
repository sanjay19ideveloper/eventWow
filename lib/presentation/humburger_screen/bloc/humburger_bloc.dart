import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:sanjay_s_application2/presentation/humburger_screen/models/humburger_model.dart';part 'humburger_event.dart';part 'humburger_state.dart';/// A bloc that manages the state of a Humburger according to the event that is dispatched to it.
class HumburgerBloc extends Bloc<HumburgerEvent, HumburgerState> {HumburgerBloc(HumburgerState initialState) : super(initialState) { on<HumburgerInitialEvent>(_onInitialize); }

_onInitialize(HumburgerInitialEvent event, Emitter<HumburgerState> emit, ) async  {  } 
 }
