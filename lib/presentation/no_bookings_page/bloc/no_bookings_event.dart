// ignore_for_file: must_be_immutable

part of 'no_bookings_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NoBookings widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NoBookingsEvent extends Equatable {}

/// Event that is dispatched when the NoBookings widget is first created.
class NoBookingsInitialEvent extends NoBookingsEvent {
  @override
  List<Object?> get props => [];
}
