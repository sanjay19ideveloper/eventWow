// ignore_for_file: must_be_immutable

part of 'lawn_business_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LawnBusinessFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LawnBusinessFourEvent extends Equatable {}

/// Event that is dispatched when the LawnBusinessFour widget is first created.
class LawnBusinessFourInitialEvent extends LawnBusinessFourEvent {
  @override
  List<Object?> get props => [];
}
