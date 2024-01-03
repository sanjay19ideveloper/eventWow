import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/edit_page_five_tab_container_screen/models/edit_page_five_tab_container_model.dart';
part 'edit_page_five_tab_container_event.dart';
part 'edit_page_five_tab_container_state.dart';

/// A bloc that manages the state of a EditPageFiveTabContainer according to the event that is dispatched to it.
class EditPageFiveTabContainerBloc
    extends Bloc<EditPageFiveTabContainerEvent, EditPageFiveTabContainerState> {
  EditPageFiveTabContainerBloc(EditPageFiveTabContainerState initialState)
      : super(initialState) {
    on<EditPageFiveTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EditPageFiveTabContainerInitialEvent event,
    Emitter<EditPageFiveTabContainerState> emit,
  ) async {}
}
