// ignore_for_file: must_be_immutable

part of 'language_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Language widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LanguageEvent extends Equatable {}

/// Event that is dispatched when the Language widget is first created.
class LanguageInitialEvent extends LanguageEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends LanguageEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton1Event extends LanguageEvent {
  ChangeRadioButton1Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton2Event extends LanguageEvent {
  ChangeRadioButton2Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton3Event extends LanguageEvent {
  ChangeRadioButton3Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
