// ignore_for_file: must_be_immutable

part of 'invites_video_invites_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InvitesVideoInvites widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InvitesVideoInvitesEvent extends Equatable {}

/// Event that is dispatched when the InvitesVideoInvites widget is first created.
class InvitesVideoInvitesInitialEvent extends InvitesVideoInvitesEvent {
  @override
  List<Object?> get props => [];
}
