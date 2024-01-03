import '../models/gridsection2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Gridsection2ItemWidget extends StatelessWidget {
  Gridsection2ItemWidget(
    this.gridsection2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Gridsection2ItemModel gridsection2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170.v,
      width: 161.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CustomImageView(
            imagePath: gridsection2ItemModelObj?.image,
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
                gridsection2ItemModelObj.text!,
                style: CustomTextStyles.labelLarge12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
