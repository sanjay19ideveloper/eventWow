// ignore_for_file: must_be_immutable

part of 'edit_page_four_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EditPageFourTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EditPageFourTabContainerEvent extends Equatable {}

/// Event that is dispatched when the EditPageFourTabContainer widget is first created.
class EditPageFourTabContainerInitialEvent
    extends EditPageFourTabContainerEvent {
  @override
  List<Object?> get props => [];
}
