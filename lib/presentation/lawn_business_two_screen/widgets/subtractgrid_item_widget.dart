import '../models/subtractgrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class SubtractgridItemWidget extends StatelessWidget {
  SubtractgridItemWidget(
    this.subtractgridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SubtractgridItemModel subtractgridItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170.v,
      width: 161.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: subtractgridItemModelObj?.image,
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
