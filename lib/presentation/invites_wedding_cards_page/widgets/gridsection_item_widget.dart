import '../models/gridsection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class GridsectionItemWidget extends StatelessWidget {
  GridsectionItemWidget(
    this.gridsectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  GridsectionItemModel gridsectionItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170.v,
      width: 161.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CustomImageView(
            imagePath: gridsectionItemModelObj?.image,
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
                bottom: 16.v,
              ),
              child: Text(
                gridsectionItemModelObj.text!,
                style: CustomTextStyles.labelLarge12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
