// ignore_for_file: must_be_immutable

part of 'all_top_selling_one_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AllTopSellingOneTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AllTopSellingOneTabContainerEvent extends Equatable {}

/// Event that is dispatched when the AllTopSellingOneTabContainer widget is first created.
class AllTopSellingOneTabContainerInitialEvent
    extends AllTopSellingOneTabContainerEvent {
  @override
  List<Object?> get props => [];
}
