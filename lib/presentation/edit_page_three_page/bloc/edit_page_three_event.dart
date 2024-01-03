// ignore_for_file: must_be_immutable

part of 'edit_page_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EditPageThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EditPageThreeEvent extends Equatable {}

/// Event that is dispatched when the EditPageThree widget is first created.
class EditPageThreeInitialEvent extends EditPageThreeEvent {
  @override
  List<Object?> get props => [];
}
