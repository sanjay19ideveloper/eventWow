// ignore_for_file: must_be_immutable

part of 'lawn_business_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LawnBusinessThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LawnBusinessThreeEvent extends Equatable {}

/// Event that is dispatched when the LawnBusinessThree widget is first created.
class LawnBusinessThreeInitialEvent extends LawnBusinessThreeEvent {
  @override
  List<Object?> get props => [];
}
