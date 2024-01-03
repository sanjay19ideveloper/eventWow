// ignore_for_file: must_be_immutable

part of 'invites_video_invites_bloc.dart';

/// Represents the state of InvitesVideoInvites in the application.
class InvitesVideoInvitesState extends Equatable {
  InvitesVideoInvitesState({this.invitesVideoInvitesModelObj});

  InvitesVideoInvitesModel? invitesVideoInvitesModelObj;

  @override
  List<Object?> get props => [
        invitesVideoInvitesModelObj,
      ];
  InvitesVideoInvitesState copyWith(
      {InvitesVideoInvitesModel? invitesVideoInvitesModelObj}) {
    return InvitesVideoInvitesState(
      invitesVideoInvitesModelObj:
          invitesVideoInvitesModelObj ?? this.invitesVideoInvitesModelObj,
    );
  }
}
