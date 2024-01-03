// ignore_for_file: must_be_immutable

part of 'chats_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChatsOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChatsOneEvent extends Equatable {}

/// Event that is dispatched when the ChatsOne widget is first created.
class ChatsOneInitialEvent extends ChatsOneEvent {
  @override
  List<Object?> get props => [];
}
