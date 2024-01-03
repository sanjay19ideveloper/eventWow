import '../models/banquetcomponent_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class BanquetcomponentItemWidget extends StatelessWidget {
  BanquetcomponentItemWidget(
    this.banquetcomponentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BanquetcomponentItemModel banquetcomponentItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 157.v,
      width: 149.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: banquetcomponentItemModelObj?.banquetImage,
            height: 157.v,
            width: 149.h,
            radius: BorderRadius.circular(
              15.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                right: 6.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomIconButton(
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    alignment: Alignment.centerRight,
                    child: CustomImageView(
                      imagePath: banquetcomponentItemModelObj?.paperPlaneIcon,
                    ),
                  ),
                  SizedBox(height: 87.v),
                  Text(
                    banquetcomponentItemModelObj.banquetText!,
                    style: CustomTextStyles.labelLarge12,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
