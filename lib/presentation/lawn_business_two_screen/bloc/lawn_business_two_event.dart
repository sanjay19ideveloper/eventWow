// ignore_for_file: must_be_immutable

part of 'lawn_business_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LawnBusinessTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LawnBusinessTwoEvent extends Equatable {}

/// Event that is dispatched when the LawnBusinessTwo widget is first created.
class LawnBusinessTwoInitialEvent extends LawnBusinessTwoEvent {
  @override
  List<Object?> get props => [];
}
