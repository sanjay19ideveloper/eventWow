import 'bloc/sign_out_bloc.dart';
import 'models/sign_out_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SignOutBottomsheet extends StatelessWidget {
  const SignOutBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SignOutBloc>(
      create: (context) => SignOutBloc(SignOutState(
        signOutModelObj: SignOutModel(),
      ))
        ..add(SignOutInitialEvent()),
      child: SignOutBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildScrollView(context);
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 174.h,
          vertical: 14.v,
        ),
        decoration: AppDecoration.fillWhiteA.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL38,
        ),
        child: Container(
          height: 1.v,
          width: 26.h,
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimaryContainer,
            borderRadius: BorderRadius.circular(
              1.h,
            ),
          ),
        ),
      ),
    );
  }
}
