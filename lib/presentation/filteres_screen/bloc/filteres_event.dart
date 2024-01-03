// ignore_for_file: must_be_immutable

part of 'filteres_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Filteres widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FilteresEvent extends Equatable {}

/// Event that is dispatched when the Filteres widget is first created.
class FilteresInitialEvent extends FilteresEvent {
  @override
  List<Object?> get props => [];
}
