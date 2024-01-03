import 'bloc/invite_friend_bloc.dart';
import 'models/invite_friend_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class InviteFriendBottomsheet extends StatelessWidget {
  const InviteFriendBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<InviteFriendBloc>(
      create: (context) => InviteFriendBloc(InviteFriendState(
        inviteFriendModelObj: InviteFriendModel(),
      ))
        ..add(InviteFriendInitialEvent()),
      child: InviteFriendBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 5.v,
        width: 26.h,
        margin: EdgeInsets.fromLTRB(174.h, 12.v, 175.h, 753.v),
        decoration: BoxDecoration(
          color: theme.colorScheme.onPrimaryContainer,
          borderRadius: BorderRadius.circular(
            2.h,
          ),
        ),
      ),
    );
  }
}
