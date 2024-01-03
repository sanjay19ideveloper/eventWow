// ignore_for_file: must_be_immutable

part of 'lawn_business_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LawnBusinessOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LawnBusinessOneEvent extends Equatable {}

/// Event that is dispatched when the LawnBusinessOne widget is first created.
class LawnBusinessOneInitialEvent extends LawnBusinessOneEvent {
  @override
  List<Object?> get props => [];
}
