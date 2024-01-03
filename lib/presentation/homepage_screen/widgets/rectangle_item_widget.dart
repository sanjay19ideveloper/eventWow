import '../models/rectangle_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class RectangleItemWidget extends StatelessWidget {
  RectangleItemWidget(
    this.rectangleItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RectangleItemModel rectangleItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 149.h,
      child: Align(
        alignment: Alignment.center,
        child: CustomImageView(
          imagePath: rectangleItemModelObj?.rectangle,
          height: 157.v,
          width: 149.h,
          radius: BorderRadius.circular(
            15.h,
          ),
          margin: EdgeInsets.only(top: 1.v),
        ),
      ),
    );
  }
}
