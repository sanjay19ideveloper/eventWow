// ignore_for_file: must_be_immutable

part of 'edit_page_seven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EditPageSeven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EditPageSevenEvent extends Equatable {}

/// Event that is dispatched when the EditPageSeven widget is first created.
class EditPageSevenInitialEvent extends EditPageSevenEvent {
  @override
  List<Object?> get props => [];
}
