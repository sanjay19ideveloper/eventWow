// ignore_for_file: must_be_immutable

part of 'app_settings_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AppSettings widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AppSettingsEvent extends Equatable {}

/// Event that is dispatched when the AppSettings widget is first created.
class AppSettingsInitialEvent extends AppSettingsEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends AppSettingsEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch1Event extends AppSettingsEvent {
  ChangeSwitch1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
