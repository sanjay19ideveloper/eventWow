import '../models/userprofile2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/widgets/custom_icon_button.dart';
import 'package:sanjay_s_application2/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class Userprofile2ItemWidget extends StatelessWidget {
  Userprofile2ItemWidget(
    this.userprofile2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile2ItemModel userprofile2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 44.adaptSize,
              width: 44.adaptSize,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomIconButton(
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    padding: EdgeInsets.all(8.h),
                    decoration: IconButtonStyleHelper.outlineGray,
                    alignment: Alignment.center,
                    child: CustomImageView(
                      imagePath: userprofile2ItemModelObj?.iconButtonProps,
                    ),
                  ),
                  CustomImageView(
                    imagePath: userprofile2ItemModelObj?.circleImageProps,
                    height: 44.adaptSize,
                    width: 44.adaptSize,
                    radius: BorderRadius.circular(
                      22.h,
                    ),
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 7.h,
                top: 10.v,
                bottom: 10.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userprofile2ItemModelObj.textProps!,
                    style: CustomTextStyles.labelMediumBlack90001SemiBold,
                  ),
                  SizedBox(height: 1.v),
                  Text(
                    userprofile2ItemModelObj.textProps1!,
                    style: CustomTextStyles.kumbhSansGray50005Regular,
                  ),
                ],
              ),
            ),
            Spacer(),
            CustomImageView(
              imagePath: userprofile2ItemModelObj?.imageProps,
              height: 11.adaptSize,
              width: 11.adaptSize,
              margin: EdgeInsets.only(
                top: 14.v,
                bottom: 17.v,
              ),
            ),
            CustomOutlinedButton(
              height: 14.v,
              width: 34.h,
              text: "lbl_4_5".tr,
              margin: EdgeInsets.only(
                left: 9.h,
                top: 11.v,
                bottom: 17.v,
              ),
              buttonTextStyle: theme.textTheme.labelSmall!,
            ),
          ],
        ),
        SizedBox(height: 7.v),
        SizedBox(
          width: 327.h,
          child: Text(
            userprofile2ItemModelObj.textProps2!,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodySmallBlack900018_1,
          ),
        ),
      ],
    );
  }
}
