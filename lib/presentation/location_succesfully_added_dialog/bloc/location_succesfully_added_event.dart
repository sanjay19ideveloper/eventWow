// ignore_for_file: must_be_immutable

part of 'location_succesfully_added_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LocationSuccesfullyAdded widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LocationSuccesfullyAddedEvent extends Equatable {}

/// Event that is dispatched when the LocationSuccesfullyAdded widget is first created.
class LocationSuccesfullyAddedInitialEvent
    extends LocationSuccesfullyAddedEvent {
  @override
  List<Object?> get props => [];
}
