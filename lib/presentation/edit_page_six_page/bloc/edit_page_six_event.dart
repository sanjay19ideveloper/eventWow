// ignore_for_file: must_be_immutable

part of 'edit_page_six_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EditPageSix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EditPageSixEvent extends Equatable {}

/// Event that is dispatched when the EditPageSix widget is first created.
class EditPageSixInitialEvent extends EditPageSixEvent {
  @override
  List<Object?> get props => [];
}
