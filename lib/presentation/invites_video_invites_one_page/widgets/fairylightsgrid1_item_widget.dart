import '../models/fairylightsgrid1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Fairylightsgrid1ItemWidget extends StatelessWidget {
  Fairylightsgrid1ItemWidget(
    this.fairylightsgrid1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Fairylightsgrid1ItemModel fairylightsgrid1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170.v,
      width: 161.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CustomImageView(
            imagePath: fairylightsgrid1ItemModelObj?.fairyLightsImage,
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
                fairylightsgrid1ItemModelObj.fairyLightsText!,
                style: CustomTextStyles.labelLarge12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
