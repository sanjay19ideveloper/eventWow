// ignore_for_file: must_be_immutable

part of 'choosed_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Choosed widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChoosedEvent extends Equatable {}

/// Event that is dispatched when the Choosed widget is first created.
class ChoosedInitialEvent extends ChoosedEvent {
  @override
  List<Object?> get props => [];
}
