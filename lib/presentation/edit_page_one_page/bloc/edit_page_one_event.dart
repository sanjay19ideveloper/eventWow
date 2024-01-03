// ignore_for_file: must_be_immutable

part of 'edit_page_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EditPageOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EditPageOneEvent extends Equatable {}

/// Event that is dispatched when the EditPageOne widget is first created.
class EditPageOneInitialEvent extends EditPageOneEvent {
  @override
  List<Object?> get props => [];
}
