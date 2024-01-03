import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/vendor_map_location_screen/models/vendor_map_location_model.dart';
part 'vendor_map_location_event.dart';
part 'vendor_map_location_state.dart';

/// A bloc that manages the state of a VendorMapLocation according to the event that is dispatched to it.
class VendorMapLocationBloc
    extends Bloc<VendorMapLocationEvent, VendorMapLocationState> {
  VendorMapLocationBloc(VendorMapLocationState initialState)
      : super(initialState) {
    on<VendorMapLocationInitialEvent>(_onInitialize);
  }

  _onInitialize(
    VendorMapLocationInitialEvent event,
    Emitter<VendorMapLocationState> emit,
  ) async {}
}
