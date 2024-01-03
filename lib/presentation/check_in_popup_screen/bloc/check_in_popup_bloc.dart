import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:sanjay_s_application2/presentation/check_in_popup_screen/models/check_in_popup_model.dart';
part 'check_in_popup_event.dart';
part 'check_in_popup_state.dart';

/// A bloc that manages the state of a CheckInPopup according to the event that is dispatched to it.
class CheckInPopupBloc extends Bloc<CheckInPopupEvent, CheckInPopupState> {
  CheckInPopupBloc(CheckInPopupState initialState) : super(initialState) {
    on<CheckInPopupInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CheckInPopupInitialEvent event,
    Emitter<CheckInPopupState> emit,
  ) async {
    emit(state.copyWith(
      rangeSelectionMode: RangeSelectionMode.toggledOn,
    ));
  }
}
