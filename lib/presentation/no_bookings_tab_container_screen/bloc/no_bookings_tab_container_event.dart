// ignore_for_file: must_be_immutable

part of 'no_bookings_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NoBookingsTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NoBookingsTabContainerEvent extends Equatable {}

/// Event that is dispatched when the NoBookingsTabContainer widget is first created.
class NoBookingsTabContainerInitialEvent extends NoBookingsTabContainerEvent {
  @override
  List<Object?> get props => [];
}
