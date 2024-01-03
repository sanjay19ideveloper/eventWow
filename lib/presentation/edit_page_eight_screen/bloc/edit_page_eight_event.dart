// ignore_for_file: must_be_immutable

part of 'edit_page_eight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EditPageEight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EditPageEightEvent extends Equatable {}

/// Event that is dispatched when the EditPageEight widget is first created.
class EditPageEightInitialEvent extends EditPageEightEvent {
  @override
  List<Object?> get props => [];
}
