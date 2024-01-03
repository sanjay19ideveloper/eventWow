// ignore_for_file: must_be_immutable

part of 'upcoming_bookings_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///UpcomingBookings widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class UpcomingBookingsEvent extends Equatable {}

/// Event that is dispatched when the UpcomingBookings widget is first created.
class UpcomingBookingsInitialEvent extends UpcomingBookingsEvent {
  @override
  List<Object?> get props => [];
}
