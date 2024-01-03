// ignore_for_file: must_be_immutable

part of 'all_top_selling_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AllTopSelling widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AllTopSellingEvent extends Equatable {}

/// Event that is dispatched when the AllTopSelling widget is first created.
class AllTopSellingInitialEvent extends AllTopSellingEvent {
  @override
  List<Object?> get props => [];
}
