// ignore_for_file: must_be_immutable

part of 'faq_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Faq widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FaqEvent extends Equatable {}

/// Event that is dispatched when the Faq widget is first created.
class FaqInitialEvent extends FaqEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends FaqEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
