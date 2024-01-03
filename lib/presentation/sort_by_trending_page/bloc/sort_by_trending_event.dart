// ignore_for_file: must_be_immutable

part of 'sort_by_trending_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SortByTrending widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SortByTrendingEvent extends Equatable {}

/// Event that is dispatched when the SortByTrending widget is first created.
class SortByTrendingInitialEvent extends SortByTrendingEvent {
  @override
  List<Object?> get props => [];
}
