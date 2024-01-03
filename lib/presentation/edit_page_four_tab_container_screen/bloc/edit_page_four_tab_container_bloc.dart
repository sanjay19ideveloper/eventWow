import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/edit_page_four_tab_container_screen/models/edit_page_four_tab_container_model.dart';
part 'edit_page_four_tab_container_event.dart';
part 'edit_page_four_tab_container_state.dart';

/// A bloc that manages the state of a EditPageFourTabContainer according to the event that is dispatched to it.
class EditPageFourTabContainerBloc
    extends Bloc<EditPageFourTabContainerEvent, EditPageFourTabContainerState> {
  EditPageFourTabContainerBloc(EditPageFourTabContainerState initialState)
      : super(initialState) {
    on<EditPageFourTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EditPageFourTabContainerInitialEvent event,
    Emitter<EditPageFourTabContainerState> emit,
  ) async {}
}
