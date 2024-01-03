// ignore_for_file: must_be_immutable

part of 'publish_card_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PublishCard widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PublishCardEvent extends Equatable {}

/// Event that is dispatched when the PublishCard widget is first created.
class PublishCardInitialEvent extends PublishCardEvent {
  @override
  List<Object?> get props => [];
}
