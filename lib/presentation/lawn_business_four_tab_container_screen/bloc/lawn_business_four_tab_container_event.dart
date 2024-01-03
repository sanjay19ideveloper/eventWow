// ignore_for_file: must_be_immutable

part of 'lawn_business_four_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LawnBusinessFourTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LawnBusinessFourTabContainerEvent extends Equatable {}

/// Event that is dispatched when the LawnBusinessFourTabContainer widget is first created.
class LawnBusinessFourTabContainerInitialEvent
    extends LawnBusinessFourTabContainerEvent {
  @override
  List<Object?> get props => [];
}
