import '../models/savethedatecards_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class SavethedatecardsItemWidget extends StatelessWidget {
  SavethedatecardsItemWidget(
    this.savethedatecardsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SavethedatecardsItemModel savethedatecardsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 157.v,
      width: 149.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CustomImageView(
            imagePath: savethedatecardsItemModelObj?.image,
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
                bottom: 13.v,
              ),
              child: Text(
                savethedatecardsItemModelObj.text!,
                style: CustomTextStyles.labelLarge12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
