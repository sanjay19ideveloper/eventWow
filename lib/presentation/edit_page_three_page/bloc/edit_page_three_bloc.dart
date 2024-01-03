import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/edit_page_three_page/models/edit_page_three_model.dart';
part 'edit_page_three_event.dart';
part 'edit_page_three_state.dart';

/// A bloc that manages the state of a EditPageThree according to the event that is dispatched to it.
class EditPageThreeBloc extends Bloc<EditPageThreeEvent, EditPageThreeState> {
  EditPageThreeBloc(EditPageThreeState initialState) : super(initialState) {
    on<EditPageThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EditPageThreeInitialEvent event,
    Emitter<EditPageThreeState> emit,
  ) async {}
}
