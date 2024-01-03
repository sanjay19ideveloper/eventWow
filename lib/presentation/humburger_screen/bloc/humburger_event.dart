// ignore_for_file: must_be_immutable

part of 'humburger_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Humburger widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HumburgerEvent extends Equatable {}

/// Event that is dispatched when the Humburger widget is first created.
class HumburgerInitialEvent extends HumburgerEvent {
  @override
  List<Object?> get props => [];
}
