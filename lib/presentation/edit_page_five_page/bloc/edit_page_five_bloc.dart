import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/edit_page_five_page/models/edit_page_five_model.dart';
part 'edit_page_five_event.dart';
part 'edit_page_five_state.dart';

/// A bloc that manages the state of a EditPageFive according to the event that is dispatched to it.
class EditPageFiveBloc extends Bloc<EditPageFiveEvent, EditPageFiveState> {
  EditPageFiveBloc(EditPageFiveState initialState) : super(initialState) {
    on<EditPageFiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EditPageFiveInitialEvent event,
    Emitter<EditPageFiveState> emit,
  ) async {}
}
