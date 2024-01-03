// ignore_for_file: must_be_immutable

part of 'check_in_popup_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CheckInPopup widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CheckInPopupEvent extends Equatable {}

/// Event that is dispatched when the CheckInPopup widget is first created.
class CheckInPopupInitialEvent extends CheckInPopupEvent {
  @override
  List<Object?> get props => [];
}
