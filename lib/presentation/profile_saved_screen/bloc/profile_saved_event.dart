// ignore_for_file: must_be_immutable

part of 'profile_saved_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileSaved widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileSavedEvent extends Equatable {}

/// Event that is dispatched when the ProfileSaved widget is first created.
class ProfileSavedInitialEvent extends ProfileSavedEvent {
  @override
  List<Object?> get props => [];
}
