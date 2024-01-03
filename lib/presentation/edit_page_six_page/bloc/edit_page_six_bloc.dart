import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/edit_page_six_page/models/edit_page_six_model.dart';
part 'edit_page_six_event.dart';
part 'edit_page_six_state.dart';

/// A bloc that manages the state of a EditPageSix according to the event that is dispatched to it.
class EditPageSixBloc extends Bloc<EditPageSixEvent, EditPageSixState> {
  EditPageSixBloc(EditPageSixState initialState) : super(initialState) {
    on<EditPageSixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EditPageSixInitialEvent event,
    Emitter<EditPageSixState> emit,
  ) async {}
}
