import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/locationinfo_item_model.dart';
import 'package:sanjay_s_application2/presentation/location_access_bottomsheet/models/location_access_model.dart';
part 'location_access_event.dart';
part 'location_access_state.dart';

/// A bloc that manages the state of a LocationAccess according to the event that is dispatched to it.
class LocationAccessBloc
    extends Bloc<LocationAccessEvent, LocationAccessState> {
  LocationAccessBloc(LocationAccessState initialState) : super(initialState) {
    on<LocationAccessInitialEvent>(_onInitialize);
  }

  List<LocationinfoItemModel> fillLocationinfoItemList() {
    return [
      LocationinfoItemModel(
          hotelName: "Elenora Hotel",
          address: "6 Glendale St. Worcester, MA 01604",
          distance: "2.9 km"),
      LocationinfoItemModel(
          hotelName: "Grand City park",
          address: "6 Glendale St. Worcester, MA 01604",
          distance: "6.9 km"),
      LocationinfoItemModel(
          hotelName: "Mall Plaza",
          address: "6 Glendale St. Worcester, MA 01604",
          distance: "2.9 km"),
      LocationinfoItemModel(
          hotelName: "Hellona Restaurant",
          address: "6 Glendale St. Worcester, MA 01604",
          distance: "2.9 km"),
      LocationinfoItemModel(
          hotelName: "Elenora Hotel",
          address: "6 Glendale St. Worcester, MA 01604",
          distance: "2.9 km")
    ];
  }

  _onInitialize(
    LocationAccessInitialEvent event,
    Emitter<LocationAccessState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        locationAccessModelObj: state.locationAccessModelObj?.copyWith(
      locationinfoItemList: fillLocationinfoItemList(),
    )));
  }
}
