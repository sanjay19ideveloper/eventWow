import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/edit_page_four_page/models/edit_page_four_model.dart';
part 'edit_page_four_event.dart';
part 'edit_page_four_state.dart';

/// A bloc that manages the state of a EditPageFour according to the event that is dispatched to it.
class EditPageFourBloc extends Bloc<EditPageFourEvent, EditPageFourState> {
  EditPageFourBloc(EditPageFourState initialState) : super(initialState) {
    on<EditPageFourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EditPageFourInitialEvent event,
    Emitter<EditPageFourState> emit,
  ) async {}
}
