// ignore_for_file: must_be_immutable

part of 'share_the_card_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ShareTheCard widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ShareTheCardEvent extends Equatable {}

/// Event that is dispatched when the ShareTheCard widget is first created.
class ShareTheCardInitialEvent extends ShareTheCardEvent {
  @override
  List<Object?> get props => [];
}
