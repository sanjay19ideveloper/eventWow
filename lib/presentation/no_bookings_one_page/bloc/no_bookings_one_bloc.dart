import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/no_bookings_one_page/models/no_bookings_one_model.dart';
part 'no_bookings_one_event.dart';
part 'no_bookings_one_state.dart';

/// A bloc that manages the state of a NoBookingsOne according to the event that is dispatched to it.
class NoBookingsOneBloc extends Bloc<NoBookingsOneEvent, NoBookingsOneState> {
  NoBookingsOneBloc(NoBookingsOneState initialState) : super(initialState) {
    on<NoBookingsOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NoBookingsOneInitialEvent event,
    Emitter<NoBookingsOneState> emit,
  ) async {}
}
