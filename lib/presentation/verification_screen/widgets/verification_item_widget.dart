import '../models/verification_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class VerificationItemWidget extends StatelessWidget {
  VerificationItemWidget(
    this.verificationItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  VerificationItemModel verificationItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 117.h,
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 1.v,
      ),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Text(
        verificationItemModelObj.one!,
        style: CustomTextStyles.headlineSmallBlack90001,
      ),
    );
  }
}
