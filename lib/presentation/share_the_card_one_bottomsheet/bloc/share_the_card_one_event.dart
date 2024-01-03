// ignore_for_file: must_be_immutable

part of 'share_the_card_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ShareTheCardOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ShareTheCardOneEvent extends Equatable {}

/// Event that is dispatched when the ShareTheCardOne widget is first created.
class ShareTheCardOneInitialEvent extends ShareTheCardOneEvent {
  @override
  List<Object?> get props => [];
}
