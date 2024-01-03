// ignore_for_file: must_be_immutable

part of 'all_top_selling_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AllTopSellingOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AllTopSellingOneEvent extends Equatable {}

/// Event that is dispatched when the AllTopSellingOne widget is first created.
class AllTopSellingOneInitialEvent extends AllTopSellingOneEvent {
  @override
  List<Object?> get props => [];
}
