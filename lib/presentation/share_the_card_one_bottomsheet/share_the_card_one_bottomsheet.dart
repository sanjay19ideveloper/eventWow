import 'bloc/share_the_card_one_bloc.dart';
import 'models/share_the_card_one_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ShareTheCardOneBottomsheet extends StatelessWidget {
  const ShareTheCardOneBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ShareTheCardOneBloc>(
      create: (context) => ShareTheCardOneBloc(ShareTheCardOneState(
        shareTheCardOneModelObj: ShareTheCardOneModel(),
      ))
        ..add(ShareTheCardOneInitialEvent()),
      child: ShareTheCardOneBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
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
    );
  }
}
