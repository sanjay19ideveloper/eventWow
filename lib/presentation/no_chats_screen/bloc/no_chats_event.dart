// ignore_for_file: must_be_immutable

part of 'no_chats_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NoChats widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NoChatsEvent extends Equatable {}

/// Event that is dispatched when the NoChats widget is first created.
class NoChatsInitialEvent extends NoChatsEvent {
  @override
  List<Object?> get props => [];
}
