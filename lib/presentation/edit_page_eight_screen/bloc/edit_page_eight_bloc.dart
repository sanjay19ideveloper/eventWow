import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:sanjay_s_application2/presentation/edit_page_eight_screen/models/edit_page_eight_model.dart';part 'edit_page_eight_event.dart';part 'edit_page_eight_state.dart';/// A bloc that manages the state of a EditPageEight according to the event that is dispatched to it.
class EditPageEightBloc extends Bloc<EditPageEightEvent, EditPageEightState> {EditPageEightBloc(EditPageEightState initialState) : super(initialState) { on<EditPageEightInitialEvent>(_onInitialize); }

_onInitialize(EditPageEightInitialEvent event, Emitter<EditPageEightState> emit, ) async  {  } 
 }
