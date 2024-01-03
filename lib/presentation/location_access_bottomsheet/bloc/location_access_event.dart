// ignore_for_file: must_be_immutable

part of 'location_access_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LocationAccess widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LocationAccessEvent extends Equatable {}

/// Event that is dispatched when the LocationAccess widget is first created.
class LocationAccessInitialEvent extends LocationAccessEvent {
  @override
  List<Object?> get props => [];
}
