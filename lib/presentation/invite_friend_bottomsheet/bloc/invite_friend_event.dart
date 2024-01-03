// ignore_for_file: must_be_immutable

part of 'invite_friend_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InviteFriend widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InviteFriendEvent extends Equatable {}

/// Event that is dispatched when the InviteFriend widget is first created.
class InviteFriendInitialEvent extends InviteFriendEvent {
  @override
  List<Object?> get props => [];
}
