import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/edit_page_two_page/models/edit_page_two_model.dart';
part 'edit_page_two_event.dart';
part 'edit_page_two_state.dart';

/// A bloc that manages the state of a EditPageTwo according to the event that is dispatched to it.
class EditPageTwoBloc extends Bloc<EditPageTwoEvent, EditPageTwoState> {
  EditPageTwoBloc(EditPageTwoState initialState) : super(initialState) {
    on<EditPageTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EditPageTwoInitialEvent event,
    Emitter<EditPageTwoState> emit,
  ) async {}
}
