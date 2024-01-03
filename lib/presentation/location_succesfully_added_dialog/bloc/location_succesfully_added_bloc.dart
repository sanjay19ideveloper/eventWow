import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/location_succesfully_added_dialog/models/location_succesfully_added_model.dart';
part 'location_succesfully_added_event.dart';
part 'location_succesfully_added_state.dart';

/// A bloc that manages the state of a LocationSuccesfullyAdded according to the event that is dispatched to it.
class LocationSuccesfullyAddedBloc
    extends Bloc<LocationSuccesfullyAddedEvent, LocationSuccesfullyAddedState> {
  LocationSuccesfullyAddedBloc(LocationSuccesfullyAddedState initialState)
      : super(initialState) {
    on<LocationSuccesfullyAddedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LocationSuccesfullyAddedInitialEvent event,
    Emitter<LocationSuccesfullyAddedState> emit,
  ) async {}
}
