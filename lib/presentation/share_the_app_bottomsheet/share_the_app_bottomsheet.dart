import 'bloc/share_the_app_bloc.dart';
import 'models/share_the_app_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ShareTheAppBottomsheet extends StatelessWidget {
  const ShareTheAppBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ShareTheAppBloc>(
      create: (context) => ShareTheAppBloc(ShareTheAppState(
        shareTheAppModelObj: ShareTheAppModel(),
      ))
        ..add(ShareTheAppInitialEvent()),
      child: ShareTheAppBottomsheet(),
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
          vertical: 5.v,
        ),
        decoration: AppDecoration.fillWhiteA.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL38,
        ),
        child: Container(
          height: 2.v,
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
