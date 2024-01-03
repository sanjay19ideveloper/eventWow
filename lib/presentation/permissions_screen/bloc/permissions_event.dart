// ignore_for_file: must_be_immutable

part of 'permissions_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Permissions widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PermissionsEvent extends Equatable {}

/// Event that is dispatched when the Permissions widget is first created.
class PermissionsInitialEvent extends PermissionsEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends PermissionsEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch1Event extends PermissionsEvent {
  ChangeSwitch1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch2Event extends PermissionsEvent {
  ChangeSwitch2Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch3Event extends PermissionsEvent {
  ChangeSwitch3Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
