import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/all_top_selling_one_tab_container_screen/models/all_top_selling_one_tab_container_model.dart';
part 'all_top_selling_one_tab_container_event.dart';
part 'all_top_selling_one_tab_container_state.dart';

/// A bloc that manages the state of a AllTopSellingOneTabContainer according to the event that is dispatched to it.
class AllTopSellingOneTabContainerBloc extends Bloc<
    AllTopSellingOneTabContainerEvent, AllTopSellingOneTabContainerState> {
  AllTopSellingOneTabContainerBloc(
      AllTopSellingOneTabContainerState initialState)
      : super(initialState) {
    on<AllTopSellingOneTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AllTopSellingOneTabContainerInitialEvent event,
    Emitter<AllTopSellingOneTabContainerState> emit,
  ) async {}
}
