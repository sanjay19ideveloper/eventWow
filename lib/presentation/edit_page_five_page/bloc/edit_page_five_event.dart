// ignore_for_file: must_be_immutable

part of 'edit_page_five_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EditPageFive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EditPageFiveEvent extends Equatable {}

/// Event that is dispatched when the EditPageFive widget is first created.
class EditPageFiveInitialEvent extends EditPageFiveEvent {
  @override
  List<Object?> get props => [];
}
