import '../models/lawnbusinessfourtabcontainer_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class LawnbusinessfourtabcontainerItemWidget extends StatelessWidget {
  LawnbusinessfourtabcontainerItemWidget(
    this.lawnbusinessfourtabcontainerItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LawnbusinessfourtabcontainerItemModel
      lawnbusinessfourtabcontainerItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170.v,
      width: 161.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: lawnbusinessfourtabcontainerItemModelObj?.image,
            height: 170.v,
            width: 161.h,
            radius: BorderRadius.circular(
              16.h,
            ),
            alignment: Alignment.center,
          ),
          Padding(
            padding: EdgeInsets.only(top: 63.v),
            child: CustomIconButton(
              height: 37.adaptSize,
              width: 37.adaptSize,
              alignment: Alignment.topCenter,
              child: CustomImageView(),
            ),
          ),
        ],
      ),
    );
  }
}
