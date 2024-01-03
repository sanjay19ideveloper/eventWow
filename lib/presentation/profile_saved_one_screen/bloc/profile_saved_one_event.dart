// ignore_for_file: must_be_immutable

part of 'profile_saved_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileSavedOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileSavedOneEvent extends Equatable {}

/// Event that is dispatched when the ProfileSavedOne widget is first created.
class ProfileSavedOneInitialEvent extends ProfileSavedOneEvent {
  @override
  List<Object?> get props => [];
}
