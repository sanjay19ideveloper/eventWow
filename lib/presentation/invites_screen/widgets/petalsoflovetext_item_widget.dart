import '../models/petalsoflovetext_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class PetalsoflovetextItemWidget extends StatelessWidget {
  PetalsoflovetextItemWidget(
    this.petalsoflovetextItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PetalsoflovetextItemModel petalsoflovetextItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 157.v,
      width: 149.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CustomImageView(
            imagePath: petalsoflovetextItemModelObj?.petalsOfLoveImage,
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
                petalsoflovetextItemModelObj.petalsOfLoveText!,
                style: CustomTextStyles.labelLarge12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
