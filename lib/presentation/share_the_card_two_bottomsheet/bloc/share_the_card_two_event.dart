// ignore_for_file: must_be_immutable

part of 'share_the_card_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ShareTheCardTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ShareTheCardTwoEvent extends Equatable {}

/// Event that is dispatched when the ShareTheCardTwo widget is first created.
class ShareTheCardTwoInitialEvent extends ShareTheCardTwoEvent {
  @override
  List<Object?> get props => [];
}
