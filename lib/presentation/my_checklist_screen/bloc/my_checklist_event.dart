// ignore_for_file: must_be_immutable

part of 'my_checklist_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyChecklist widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyChecklistEvent extends Equatable {}

/// Event that is dispatched when the MyChecklist widget is first created.
class MyChecklistInitialEvent extends MyChecklistEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends MyChecklistEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton1Event extends MyChecklistEvent {
  ChangeRadioButton1Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton2Event extends MyChecklistEvent {
  ChangeRadioButton2Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton3Event extends MyChecklistEvent {
  ChangeRadioButton3Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton4Event extends MyChecklistEvent {
  ChangeRadioButton4Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton5Event extends MyChecklistEvent {
  ChangeRadioButton5Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton6Event extends MyChecklistEvent {
  ChangeRadioButton6Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton7Event extends MyChecklistEvent {
  ChangeRadioButton7Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton8Event extends MyChecklistEvent {
  ChangeRadioButton8Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton9Event extends MyChecklistEvent {
  ChangeRadioButton9Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton10Event extends MyChecklistEvent {
  ChangeRadioButton10Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton11Event extends MyChecklistEvent {
  ChangeRadioButton11Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton12Event extends MyChecklistEvent {
  ChangeRadioButton12Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton13Event extends MyChecklistEvent {
  ChangeRadioButton13Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
