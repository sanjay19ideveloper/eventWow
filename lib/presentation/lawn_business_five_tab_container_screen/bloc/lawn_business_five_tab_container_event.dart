// ignore_for_file: must_be_immutable

part of 'lawn_business_five_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LawnBusinessFiveTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LawnBusinessFiveTabContainerEvent extends Equatable {}

/// Event that is dispatched when the LawnBusinessFiveTabContainer widget is first created.
class LawnBusinessFiveTabContainerInitialEvent
    extends LawnBusinessFiveTabContainerEvent {
  @override
  List<Object?> get props => [];
}
