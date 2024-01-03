import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/location_access_one_dialog/models/location_access_one_model.dart';
part 'location_access_one_event.dart';
part 'location_access_one_state.dart';

/// A bloc that manages the state of a LocationAccessOne according to the event that is dispatched to it.
class LocationAccessOneBloc
    extends Bloc<LocationAccessOneEvent, LocationAccessOneState> {
  LocationAccessOneBloc(LocationAccessOneState initialState)
      : super(initialState) {
    on<LocationAccessOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LocationAccessOneInitialEvent event,
    Emitter<LocationAccessOneState> emit,
  ) async {}
}
