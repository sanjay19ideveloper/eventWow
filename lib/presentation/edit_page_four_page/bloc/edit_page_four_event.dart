// ignore_for_file: must_be_immutable

part of 'edit_page_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EditPageFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EditPageFourEvent extends Equatable {}

/// Event that is dispatched when the EditPageFour widget is first created.
class EditPageFourInitialEvent extends EditPageFourEvent {
  @override
  List<Object?> get props => [];
}
