// ignore_for_file: must_be_immutable

part of 'check_in_popup_bloc.dart';

/// Represents the state of CheckInPopup in the application.
class CheckInPopupState extends Equatable {
  CheckInPopupState({
    this.rangeStart,
    this.rangeEnd,
    this.selectedDay,
    this.focusedDay,
    this.rangeSelectionMode = RangeSelectionMode.toggledOn,
    this.checkInPopupModelObj,
  });

  CheckInPopupModel? checkInPopupModelObj;

  DateTime? rangeStart;

  DateTime? rangeEnd;

  DateTime? selectedDay;

  DateTime? focusedDay;

  RangeSelectionMode rangeSelectionMode;

  @override
  List<Object?> get props => [
        rangeStart,
        rangeEnd,
        selectedDay,
        focusedDay,
        rangeSelectionMode,
        checkInPopupModelObj,
      ];
  CheckInPopupState copyWith({
    DateTime? rangeStart,
    DateTime? rangeEnd,
    DateTime? selectedDay,
    DateTime? focusedDay,
    RangeSelectionMode? rangeSelectionMode,
    CheckInPopupModel? checkInPopupModelObj,
  }) {
    return CheckInPopupState(
      rangeStart: rangeStart ?? this.rangeStart,
      rangeEnd: rangeEnd ?? this.rangeEnd,
      selectedDay: selectedDay ?? this.selectedDay,
      focusedDay: focusedDay ?? this.focusedDay,
      rangeSelectionMode: rangeSelectionMode ?? this.rangeSelectionMode,
      checkInPopupModelObj: checkInPopupModelObj ?? this.checkInPopupModelObj,
    );
  }
}
