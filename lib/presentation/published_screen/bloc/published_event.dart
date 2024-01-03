// ignore_for_file: must_be_immutable

part of 'published_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Published widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PublishedEvent extends Equatable {}

/// Event that is dispatched when the Published widget is first created.
class PublishedInitialEvent extends PublishedEvent {
  @override
  List<Object?> get props => [];
}
