// ignore_for_file: must_be_immutable

part of 'lawn_business_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LawnBusiness widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LawnBusinessEvent extends Equatable {}

/// Event that is dispatched when the LawnBusiness widget is first created.
class LawnBusinessInitialEvent extends LawnBusinessEvent {
  @override
  List<Object?> get props => [];
}
