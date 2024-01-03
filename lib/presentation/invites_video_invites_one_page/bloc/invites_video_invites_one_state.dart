// ignore_for_file: must_be_immutable

part of 'invites_video_invites_one_bloc.dart';

/// Represents the state of InvitesVideoInvitesOne in the application.
class InvitesVideoInvitesOneState extends Equatable {
  InvitesVideoInvitesOneState({this.invitesVideoInvitesOneModelObj});

  InvitesVideoInvitesOneModel? invitesVideoInvitesOneModelObj;

  @override
  List<Object?> get props => [
        invitesVideoInvitesOneModelObj,
      ];
  InvitesVideoInvitesOneState copyWith(
      {InvitesVideoInvitesOneModel? invitesVideoInvitesOneModelObj}) {
    return InvitesVideoInvitesOneState(
      invitesVideoInvitesOneModelObj:
          invitesVideoInvitesOneModelObj ?? this.invitesVideoInvitesOneModelObj,
    );
  }
}
