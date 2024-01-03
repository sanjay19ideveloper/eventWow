import '../models/fairylightsgrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class FairylightsgridItemWidget extends StatelessWidget {
  FairylightsgridItemWidget(
    this.fairylightsgridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FairylightsgridItemModel fairylightsgridItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170.v,
      width: 161.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CustomImageView(
            imagePath: fairylightsgridItemModelObj?.fairyLightsImage,
            height: 170.v,
            width: 161.h,
            radius: BorderRadius.circular(
              16.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 13.h,
                bottom: 14.v,
              ),
              child: Text(
                fairylightsgridItemModelObj.fairyLightsText!,
                style: CustomTextStyles.labelLarge12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
