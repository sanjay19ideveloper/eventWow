// ignore_for_file: must_be_immutable

part of 'add_my_checklist_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddMyChecklist widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AddMyChecklistEvent extends Equatable {}

/// Event that is dispatched when the AddMyChecklist widget is first created.
class AddMyChecklistInitialEvent extends AddMyChecklistEvent {
  @override
  List<Object?> get props => [];
}
