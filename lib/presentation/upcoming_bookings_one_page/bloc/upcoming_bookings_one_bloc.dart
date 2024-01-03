import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofilesection1_item_model.dart';
import 'package:sanjay_s_application2/presentation/upcoming_bookings_one_page/models/upcoming_bookings_one_model.dart';
part 'upcoming_bookings_one_event.dart';
part 'upcoming_bookings_one_state.dart';

/// A bloc that manages the state of a UpcomingBookingsOne according to the event that is dispatched to it.
class UpcomingBookingsOneBloc
    extends Bloc<UpcomingBookingsOneEvent, UpcomingBookingsOneState> {
  UpcomingBookingsOneBloc(UpcomingBookingsOneState initialState)
      : super(initialState) {
    on<UpcomingBookingsOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    UpcomingBookingsOneInitialEvent event,
    Emitter<UpcomingBookingsOneState> emit,
  ) async {
    emit(state.copyWith(
        upcomingBookingsOneModelObj:
            state.upcomingBookingsOneModelObj?.copyWith(
      userprofilesection1ItemList: fillUserprofilesection1ItemList(),
    )));
  }

  List<Userprofilesection1ItemModel> fillUserprofilesection1ItemList() {
    return [
      Userprofilesection1ItemModel(
          titleText: "The Cink Click",
          subtitleText: "Photpgrapher",
          locationText: "Sec-13, Pune"),
      Userprofilesection1ItemModel(
          titleText: "The Cink Click",
          subtitleText: "Photpgrapher",
          locationText: "Sec-13, Pune"),
      Userprofilesection1ItemModel(
          titleText: "The Cink Click",
          subtitleText: "Photpgrapher",
          locationText: "Sec-13, Pune")
    ];
  }
}
