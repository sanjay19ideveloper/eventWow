// ignore_for_file: must_be_immutable

part of 'invites_video_invites_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InvitesVideoInvitesOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InvitesVideoInvitesOneEvent extends Equatable {}

/// Event that is dispatched when the InvitesVideoInvitesOne widget is first created.
class InvitesVideoInvitesOneInitialEvent extends InvitesVideoInvitesOneEvent {
  @override
  List<Object?> get props => [];
}
