// ignore_for_file: must_be_immutable

part of 'no_bookings_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NoBookingsOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NoBookingsOneEvent extends Equatable {}

/// Event that is dispatched when the NoBookingsOne widget is first created.
class NoBookingsOneInitialEvent extends NoBookingsOneEvent {
  @override
  List<Object?> get props => [];
}
