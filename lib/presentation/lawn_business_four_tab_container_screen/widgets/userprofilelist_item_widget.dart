import '../models/userprofilelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  UserprofilelistItemWidget(
    this.userprofilelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofilelistItemModel userprofilelistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
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
                imagePath: userprofilelistItemModelObj?.userImage1,
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
                    imagePath: userprofilelistItemModelObj?.userImage2,
                    height: 9.v,
                    width: 6.h,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 5.v,
            bottom: 83.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userprofilelistItemModelObj.userText1!,
                style: CustomTextStyles.labelLargeBlack90001_1,
              ),
              Text(
                userprofilelistItemModelObj.userText2!,
                style: CustomTextStyles.labelMediumBlack90001_2,
              ),
              SizedBox(height: 4.v),
              Row(
                children: [
                  CustomImageView(
                    imagePath: userprofilelistItemModelObj?.userImage3,
                    height: 12.adaptSize,
                    width: 12.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 7.h),
                    child: Text(
                      userprofilelistItemModelObj.userText3!,
                      style: CustomTextStyles.labelSmall9,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12.v),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 1.v),
                    child: Text(
                      userprofilelistItemModelObj.userText4!,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.h,
                      top: 7.v,
                    ),
                    child: Text(
                      userprofilelistItemModelObj.userText5!,
                      style: CustomTextStyles.labelMediumBlack9000111,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
