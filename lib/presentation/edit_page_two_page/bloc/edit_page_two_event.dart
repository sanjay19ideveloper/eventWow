// ignore_for_file: must_be_immutable

part of 'edit_page_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EditPageTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EditPageTwoEvent extends Equatable {}

/// Event that is dispatched when the EditPageTwo widget is first created.
class EditPageTwoInitialEvent extends EditPageTwoEvent {
  @override
  List<Object?> get props => [];
}
