// ignore_for_file: must_be_immutable

part of 'upcoming_bookings_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///UpcomingBookingsOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class UpcomingBookingsOneEvent extends Equatable {}

/// Event that is dispatched when the UpcomingBookingsOne widget is first created.
class UpcomingBookingsOneInitialEvent extends UpcomingBookingsOneEvent {
  @override
  List<Object?> get props => [];
}
