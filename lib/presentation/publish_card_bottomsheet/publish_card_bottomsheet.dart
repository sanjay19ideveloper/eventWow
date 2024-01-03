import 'bloc/publish_card_bloc.dart';
import 'models/publish_card_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class PublishCardBottomsheet extends StatelessWidget {
  const PublishCardBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PublishCardBloc>(
      create: (context) => PublishCardBloc(PublishCardState(
        publishCardModelObj: PublishCardModel(),
      ))
        ..add(PublishCardInitialEvent()),
      child: PublishCardBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
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
    );
  }
}
