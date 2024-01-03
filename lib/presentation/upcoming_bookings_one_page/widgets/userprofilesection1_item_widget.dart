import '../models/userprofilesection1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class Userprofilesection1ItemWidget extends StatelessWidget {
  Userprofilesection1ItemWidget(
    this.userprofilesection1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofilesection1ItemModel userprofilesection1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder9,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse102,
            height: 56.adaptSize,
            width: 56.adaptSize,
            radius: BorderRadius.circular(
              28.h,
            ),
            margin: EdgeInsets.only(bottom: 5.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 13.h,
              bottom: 5.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userprofilesection1ItemModelObj.titleText!,
                  style: CustomTextStyles.titleMediumPoppins_1,
                ),
                SizedBox(height: 10.v),
                Text(
                  userprofilesection1ItemModelObj.subtitleText!,
                  style: CustomTextStyles.bodyMediumPoppinsGray900cc,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              right: 1.h,
              bottom: 5.v,
            ),
            child: Column(
              children: [
                CustomElevatedButton(
                  height: 26.v,
                  width: 90.h,
                  text: "lbl_12_dec_2022".tr,
                  buttonStyle: CustomButtonStyles.fillPrimaryTL13,
                  buttonTextStyle: CustomTextStyles.bodySmallPoppinsWhiteA700,
                ),
                SizedBox(height: 13.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    userprofilesection1ItemModelObj.locationText!,
                    style: CustomTextStyles.bodyMediumBlack9000113,
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
