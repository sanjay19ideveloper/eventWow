import '../models/userprofile13_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile13ItemWidget extends StatelessWidget {
  Userprofile13ItemWidget(
    this.userprofile13ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile13ItemModel userprofile13ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 322.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 170.v,
            width: 161.h,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle4279170x161,
                  height: 170.v,
                  width: 161.h,
                  radius: BorderRadius.circular(
                    16.h,
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 19.adaptSize,
                    width: 19.adaptSize,
                    margin: EdgeInsets.only(
                      top: 9.v,
                      right: 8.h,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 6.h,
                      vertical: 4.v,
                    ),
                    decoration: AppDecoration.fillGray100.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder9,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgBookmark,
                      height: 9.v,
                      width: 6.h,
                      alignment: Alignment.topRight,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 5.v,
              bottom: 57.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userprofile13ItemModelObj.userText1!,
                  style: CustomTextStyles.labelLargeBlack90001_1,
                ),
                Text(
                  userprofile13ItemModelObj.userText2!,
                  style: CustomTextStyles.labelMediumBlack90001_2,
                ),
                SizedBox(height: 4.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgStarSymbolIconYellowA700,
                      height: 12.adaptSize,
                      width: 12.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: Text(
                        userprofile13ItemModelObj.userText3!,
                        style: CustomTextStyles.labelSmall9,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 11.v),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 1.v),
                      child: Text(
                        userprofile13ItemModelObj.userText4!,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 4.h,
                        top: 7.v,
                      ),
                      child: Text(
                        userprofile13ItemModelObj.userText5!,
                        style: CustomTextStyles.labelMediumBlack9000111,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 11.v),
                SizedBox(
                  height: 15.v,
                  width: 146.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          userprofile13ItemModelObj.userText6!,
                          style: CustomTextStyles.labelLargeBlack9000112,
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          userprofile13ItemModelObj.userText7!,
                          style: CustomTextStyles.labelLargeBlack9000112,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
