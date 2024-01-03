// ignore_for_file: must_be_immutable

part of 'invite_friend_bloc.dart';

/// Represents the state of InviteFriend in the application.
class InviteFriendState extends Equatable {
  InviteFriendState({this.inviteFriendModelObj});

  InviteFriendModel? inviteFriendModelObj;

  @override
  List<Object?> get props => [
        inviteFriendModelObj,
      ];
  InviteFriendState copyWith({InviteFriendModel? inviteFriendModelObj}) {
    return InviteFriendState(
      inviteFriendModelObj: inviteFriendModelObj ?? this.inviteFriendModelObj,
    );
  }
}
