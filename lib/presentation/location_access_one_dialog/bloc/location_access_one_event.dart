// ignore_for_file: must_be_immutable

part of 'location_access_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LocationAccessOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LocationAccessOneEvent extends Equatable {}

/// Event that is dispatched when the LocationAccessOne widget is first created.
class LocationAccessOneInitialEvent extends LocationAccessOneEvent {
  @override
  List<Object?> get props => [];
}
