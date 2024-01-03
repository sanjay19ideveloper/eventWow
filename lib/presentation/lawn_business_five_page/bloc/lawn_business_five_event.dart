// ignore_for_file: must_be_immutable

part of 'lawn_business_five_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LawnBusinessFive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LawnBusinessFiveEvent extends Equatable {}

/// Event that is dispatched when the LawnBusinessFive widget is first created.
class LawnBusinessFiveInitialEvent extends LawnBusinessFiveEvent {
  @override
  List<Object?> get props => [];
}
