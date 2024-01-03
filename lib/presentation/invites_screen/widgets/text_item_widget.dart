import '../models/text_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class TextItemWidget extends StatelessWidget {
  TextItemWidget(
    this.textItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TextItemModel textItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 157.v,
      width: 149.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CustomImageView(
            imagePath: textItemModelObj?.image,
            height: 157.v,
            width: 149.h,
            radius: BorderRadius.circular(
              15.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                bottom: 14.v,
              ),
              child: Text(
                textItemModelObj.text!,
                style: CustomTextStyles.labelLarge12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
