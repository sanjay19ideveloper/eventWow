import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:sanjay_s_application2/presentation/edit_page_seven_dialog/models/edit_page_seven_model.dart';part 'edit_page_seven_event.dart';part 'edit_page_seven_state.dart';/// A bloc that manages the state of a EditPageSeven according to the event that is dispatched to it.
class EditPageSevenBloc extends Bloc<EditPageSevenEvent, EditPageSevenState> {EditPageSevenBloc(EditPageSevenState initialState) : super(initialState) { on<EditPageSevenInitialEvent>(_onInitialize); }

_onInitialize(EditPageSevenInitialEvent event, Emitter<EditPageSevenState> emit, ) async  {  } 
 }
