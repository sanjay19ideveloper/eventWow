// ignore_for_file: must_be_immutable

part of 'you_want_to_choose_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///YouWantToChoose widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class YouWantToChooseEvent extends Equatable {}

/// Event that is dispatched when the YouWantToChoose widget is first created.
class YouWantToChooseInitialEvent extends YouWantToChooseEvent {
  @override
  List<Object?> get props => [];
}
