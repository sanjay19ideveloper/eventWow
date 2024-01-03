import '../models/previewcard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class PreviewcardItemWidget extends StatelessWidget {
  PreviewcardItemWidget(
    this.previewcardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PreviewcardItemModel previewcardItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: previewcardItemModelObj?.rectangle,
      height: 452.v,
      width: 334.h,
      radius: BorderRadius.circular(
        16.h,
      ),
    );
  }
}
