import '../models/lawnbusinessfivetabcontainer_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class LawnbusinessfivetabcontainerItemWidget extends StatelessWidget {
  LawnbusinessfivetabcontainerItemWidget(
    this.lawnbusinessfivetabcontainerItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LawnbusinessfivetabcontainerItemModel
      lawnbusinessfivetabcontainerItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 171.v,
      width: 168.h,
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: CustomImageView(
        imagePath: ImageConstant.imgImage22,
        height: 44.adaptSize,
        width: 44.adaptSize,
        alignment: Alignment.center,
      ),
    );
  }
}
