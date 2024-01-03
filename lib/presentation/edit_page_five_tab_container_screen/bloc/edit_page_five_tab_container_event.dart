// ignore_for_file: must_be_immutable

part of 'edit_page_five_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EditPageFiveTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EditPageFiveTabContainerEvent extends Equatable {}

/// Event that is dispatched when the EditPageFiveTabContainer widget is first created.
class EditPageFiveTabContainerInitialEvent
    extends EditPageFiveTabContainerEvent {
  @override
  List<Object?> get props => [];
}
