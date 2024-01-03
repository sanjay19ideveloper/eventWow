// ignore_for_file: must_be_immutable

part of 'ratings_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Ratings widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RatingsEvent extends Equatable {}

/// Event that is dispatched when the Ratings widget is first created.
class RatingsInitialEvent extends RatingsEvent {
  @override
  List<Object?> get props => [];
}
