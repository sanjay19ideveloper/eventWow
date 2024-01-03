import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/no_bookings_page/models/no_bookings_model.dart';
part 'no_bookings_event.dart';
part 'no_bookings_state.dart';

/// A bloc that manages the state of a NoBookings according to the event that is dispatched to it.
class NoBookingsBloc extends Bloc<NoBookingsEvent, NoBookingsState> {
  NoBookingsBloc(NoBookingsState initialState) : super(initialState) {
    on<NoBookingsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NoBookingsInitialEvent event,
    Emitter<NoBookingsState> emit,
  ) async {}
}
