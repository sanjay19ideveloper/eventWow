// ignore_for_file: must_be_immutable

part of 'rate_us_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RateUs widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RateUsEvent extends Equatable {}

/// Event that is dispatched when the RateUs widget is first created.
class RateUsInitialEvent extends RateUsEvent {
  @override
  List<Object?> get props => [];
}
