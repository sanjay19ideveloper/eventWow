import '../models/rewindlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class RewindlistItemWidget extends StatelessWidget {
  RewindlistItemWidget(
    this.rewindlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RewindlistItemModel rewindlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 48.h,
      child: Align(
        alignment: Alignment.centerLeft,
        child: CustomIconButton(
          height: 48.adaptSize,
          width: 48.adaptSize,
          padding: EdgeInsets.all(16.h),
          decoration: IconButtonStyleHelper.fillGray,
          child: CustomImageView(
            imagePath: rewindlistItemModelObj?.rewind,
          ),
        ),
      ),
    );
  }
}
