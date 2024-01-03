import '../models/gridsection1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Gridsection1ItemWidget extends StatelessWidget {
  Gridsection1ItemWidget(
    this.gridsection1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Gridsection1ItemModel gridsection1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170.v,
      width: 161.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CustomImageView(
            imagePath: gridsection1ItemModelObj?.image,
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
                gridsection1ItemModelObj.text!,
                style: CustomTextStyles.labelLarge12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
