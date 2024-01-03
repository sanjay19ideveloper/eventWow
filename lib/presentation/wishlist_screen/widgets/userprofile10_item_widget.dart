import '../models/userprofile10_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/widgets/custom_icon_button.dart';
import 'package:sanjay_s_application2/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class Userprofile10ItemWidget extends StatelessWidget {
  Userprofile10ItemWidget(
    this.userprofile10ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile10ItemModel userprofile10ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170.v,
      width: 161.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: userprofile10ItemModelObj?.userImage,
            height: 170.v,
            width: 161.h,
            radius: BorderRadius.circular(
              16.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(
                left: 13.h,
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
                      imagePath: ImageConstant.imgGroup165,
                    ),
                  ),
                  SizedBox(height: 82.v),
                  Row(
                    children: [
                      CustomRatingBar(
                        ignoreGestures: true,
                        initialRating: 0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Text(
                          userprofile10ItemModelObj.text!,
                          style: theme.textTheme.labelMedium,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12.v),
                  Text(
                    userprofile10ItemModelObj.text1!,
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
