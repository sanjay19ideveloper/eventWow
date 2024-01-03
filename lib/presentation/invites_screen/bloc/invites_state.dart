// ignore_for_file: must_be_immutable

part of 'invites_bloc.dart';

/// Represents the state of Invites in the application.
class InvitesState extends Equatable {
  InvitesState({this.invitesModelObj});

  InvitesModel? invitesModelObj;

  @override
  List<Object?> get props => [
        invitesModelObj,
      ];
  InvitesState copyWith({InvitesModel? invitesModelObj}) {
    return InvitesState(
      invitesModelObj: invitesModelObj ?? this.invitesModelObj,
    );
  }
}
