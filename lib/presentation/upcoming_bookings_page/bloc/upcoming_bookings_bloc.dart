import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile6_item_model.dart';
import 'package:sanjay_s_application2/presentation/upcoming_bookings_page/models/upcoming_bookings_model.dart';
part 'upcoming_bookings_event.dart';
part 'upcoming_bookings_state.dart';

/// A bloc that manages the state of a UpcomingBookings according to the event that is dispatched to it.
class UpcomingBookingsBloc
    extends Bloc<UpcomingBookingsEvent, UpcomingBookingsState> {
  UpcomingBookingsBloc(UpcomingBookingsState initialState)
      : super(initialState) {
    on<UpcomingBookingsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    UpcomingBookingsInitialEvent event,
    Emitter<UpcomingBookingsState> emit,
  ) async {
    emit(state.copyWith(
        upcomingBookingsModelObj: state.upcomingBookingsModelObj?.copyWith(
      userprofile6ItemList: fillUserprofile6ItemList(),
    )));
  }

  List<Userprofile6ItemModel> fillUserprofile6ItemList() {
    return [
      Userprofile6ItemModel(
          titleText: "The Cink Click",
          subtitleText: "Photpgrapher",
          locationText: "Sec-13, Pune"),
      Userprofile6ItemModel(
          titleText: "The Cink Click",
          subtitleText: "Photpgrapher",
          locationText: "Sec-13, Pune"),
      Userprofile6ItemModel(
          titleText: "The Cink Click",
          subtitleText: "Photpgrapher",
          locationText: "Sec-13, Pune")
    ];
  }
}
