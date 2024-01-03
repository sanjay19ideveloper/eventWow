import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/no_bookings_tab_container_screen/models/no_bookings_tab_container_model.dart';
part 'no_bookings_tab_container_event.dart';
part 'no_bookings_tab_container_state.dart';

/// A bloc that manages the state of a NoBookingsTabContainer according to the event that is dispatched to it.
class NoBookingsTabContainerBloc
    extends Bloc<NoBookingsTabContainerEvent, NoBookingsTabContainerState> {
  NoBookingsTabContainerBloc(NoBookingsTabContainerState initialState)
      : super(initialState) {
    on<NoBookingsTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NoBookingsTabContainerInitialEvent event,
    Emitter<NoBookingsTabContainerState> emit,
  ) async {}
}
