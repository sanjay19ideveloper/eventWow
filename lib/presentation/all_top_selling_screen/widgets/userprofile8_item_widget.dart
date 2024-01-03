import '../models/userprofile8_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Userprofile8ItemWidget extends StatelessWidget {
  Userprofile8ItemWidget(
    this.userprofile8ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile8ItemModel userprofile8ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170.v,
      width: 161.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: userprofile8ItemModelObj?.userImage,
            height: 170.v,
            width: 161.h,
            radius: BorderRadius.circular(
              16.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 13.h,
                top: 9.v,
                right: 8.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomIconButton(
                    height: 19.adaptSize,
                    width: 19.adaptSize,
                    padding: EdgeInsets.all(4.h),
                    alignment: Alignment.centerRight,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgBookmark,
                    ),
                  ),
                  SizedBox(height: 82.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgStarSymbolIconYellowA700,
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgStarSymbolIconYellowA700,
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                        margin: EdgeInsets.only(left: 6.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgStarSymbolIconYellowA700,
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                        margin: EdgeInsets.only(left: 5.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgStarSymbolIconYellowA700,
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                        margin: EdgeInsets.only(left: 6.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgStarSymbolIconYellowA700,
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                        margin: EdgeInsets.only(left: 5.h),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Text(
                          userprofile8ItemModelObj.ratingText!,
                          style: theme.textTheme.labelMedium,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.v),
                  Text(
                    userprofile8ItemModelObj.foodText!,
                    style: theme.textTheme.labelLarge,
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
