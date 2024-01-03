import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/edit_page_one_page/models/edit_page_one_model.dart';
part 'edit_page_one_event.dart';
part 'edit_page_one_state.dart';

/// A bloc that manages the state of a EditPageOne according to the event that is dispatched to it.
class EditPageOneBloc extends Bloc<EditPageOneEvent, EditPageOneState> {
  EditPageOneBloc(EditPageOneState initialState) : super(initialState) {
    on<EditPageOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EditPageOneInitialEvent event,
    Emitter<EditPageOneState> emit,
  ) async {}
}
