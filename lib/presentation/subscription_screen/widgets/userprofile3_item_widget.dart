import '../models/userprofile3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class Userprofile3ItemWidget extends StatelessWidget {
  Userprofile3ItemWidget(
    this.userprofile3ItemModelObj, {
    Key? key,
    this.onTapChooseButton,
  }) : super(
          key: key,
        );

  Userprofile3ItemModel userprofile3ItemModelObj;

  VoidCallback? onTapChooseButton;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.only(
          left: 256.h,
          right: 39.h,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 17.h,
          vertical: 35.v,
        ),
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder9,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 3.v),
            CustomImageView(
              imagePath: userprofile3ItemModelObj?.userImage,
              height: 36.adaptSize,
              width: 36.adaptSize,
            ),
            SizedBox(height: 19.v),
            Text(
              userprofile3ItemModelObj.starterText!,
              style: CustomTextStyles.titleMediumPrimaryBold,
            ),
            SizedBox(height: 35.v),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 27.h,
                  right: 2.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      userprofile3ItemModelObj.priceText!,
                      style: theme.textTheme.displayMedium,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 11.h,
                        top: 28.v,
                        bottom: 10.v,
                      ),
                      child: Text(
                        userprofile3ItemModelObj.durationText!,
                        style: CustomTextStyles.labelLargeGray40003,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 12.v),
            Divider(
              color: appTheme.gray30004,
              indent: 4.h,
            ),
            SizedBox(height: 27.v),
            Text(
              userprofile3ItemModelObj.placeholderText1!,
              style: CustomTextStyles.bodySmallBlack9000110_2,
            ),
            SizedBox(height: 11.v),
            Container(
              width: 227.h,
              margin: EdgeInsets.only(
                left: 17.h,
                right: 14.h,
              ),
              child: Text(
                userprofile3ItemModelObj.placeholderText2!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodySmallBlack9000110_2,
              ),
            ),
            SizedBox(height: 11.v),
            Text(
              userprofile3ItemModelObj.placeholderText3!,
              style: CustomTextStyles.bodySmallBlack9000110_2,
            ),
            SizedBox(height: 11.v),
            Container(
              width: 227.h,
              margin: EdgeInsets.only(
                left: 17.h,
                right: 14.h,
              ),
              child: Text(
                userprofile3ItemModelObj.placeholderText4!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodySmallBlack9000110_2,
              ),
            ),
            SizedBox(height: 25.v),
            CustomElevatedButton(
              height: 53.v,
              text: "lbl_choose".tr.toUpperCase(),
              margin: EdgeInsets.symmetric(horizontal: 5.h),
              buttonStyle: CustomButtonStyles.outlineIndigoFTL13,
              buttonTextStyle: CustomTextStyles.titleSmallWhiteA700,
              onPressed: () {
                onTapChooseButton!.call();
              },
            ),
          ],
        ),
      ),
    );
  }
}
