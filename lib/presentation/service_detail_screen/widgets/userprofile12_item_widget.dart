import '../models/userprofile12_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/widgets/custom_icon_button.dart';
import 'package:sanjay_s_application2/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class Userprofile12ItemWidget extends StatelessWidget {
  Userprofile12ItemWidget(
    this.userprofile12ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile12ItemModel userprofile12ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomIconButton(
              height: 38.adaptSize,
              width: 38.adaptSize,
              padding: EdgeInsets.all(7.h),
              decoration: IconButtonStyleHelper.outlineGray,
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup150,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 9.h,
                  top: 8.v,
                  bottom: 6.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 265.h,
                      child: Row(
                        children: [
                          Text(
                            userprofile12ItemModelObj.username!,
                            style: CustomTextStyles
                                .labelMediumBlack90001SemiBold_1,
                          ),
                          Spacer(),
                          CustomImageView(
                            imagePath: ImageConstant.imgSend,
                            height: 11.adaptSize,
                            width: 11.adaptSize,
                            margin: EdgeInsets.only(top: 3.v),
                          ),
                          CustomOutlinedButton(
                            height: 14.v,
                            width: 33.h,
                            text: "lbl_4_5".tr,
                            margin: EdgeInsets.only(left: 9.h),
                            buttonTextStyle:
                                CustomTextStyles.kumbhSansBlack90001,
                          ),
                        ],
                      ),
                    ),
                    Text(
                      userprofile12ItemModelObj.timeAgo!,
                      style: CustomTextStyles.kumbhSansGray50005,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 9.v),
        SizedBox(
          width: 311.h,
          child: Text(
            userprofile12ItemModelObj.loremText!,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodySmallBlack900018,
          ),
        ),
        SizedBox(height: 15.v),
      ],
    );
  }
}
