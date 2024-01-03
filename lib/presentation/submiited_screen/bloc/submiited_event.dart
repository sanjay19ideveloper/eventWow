// ignore_for_file: must_be_immutable

part of 'submiited_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Submiited widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SubmiitedEvent extends Equatable {}

/// Event that is dispatched when the Submiited widget is first created.
class SubmiitedInitialEvent extends SubmiitedEvent {
  @override
  List<Object?> get props => [];
}
