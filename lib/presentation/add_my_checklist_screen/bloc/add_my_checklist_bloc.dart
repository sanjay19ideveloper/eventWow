import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:sanjay_s_application2/presentation/add_my_checklist_screen/models/add_my_checklist_model.dart';part 'add_my_checklist_event.dart';part 'add_my_checklist_state.dart';/// A bloc that manages the state of a AddMyChecklist according to the event that is dispatched to it.
class AddMyChecklistBloc extends Bloc<AddMyChecklistEvent, AddMyChecklistState> {AddMyChecklistBloc(AddMyChecklistState initialState) : super(initialState) { on<AddMyChecklistInitialEvent>(_onInitialize); }

_onInitialize(AddMyChecklistInitialEvent event, Emitter<AddMyChecklistState> emit, ) async  { emit(state.copyWith(taskTwoController: TextEditingController(), taskTwoController1: TextEditingController(), taskTwoController2: TextEditingController(), taskTwoController3: TextEditingController(), taskTwoController4: TextEditingController())); } 
 }
