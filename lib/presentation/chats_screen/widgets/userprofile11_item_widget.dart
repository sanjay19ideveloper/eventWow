import '../models/userprofile11_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class Userprofile11ItemWidget extends StatelessWidget {
  Userprofile11ItemWidget(
    this.userprofile11ItemModelObj, {
    Key? key,
    this.onTapUserProfile,
  }) : super(
          key: key,
        );

  Userprofile11ItemModel userprofile11ItemModelObj;

  VoidCallback? onTapUserProfile;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapUserProfile!.call();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 54.v,
            width: 53.h,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle1092,
                  height: 54.v,
                  width: 53.h,
                  radius: BorderRadius.circular(
                    26.h,
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 8.adaptSize,
                    width: 8.adaptSize,
                    margin: EdgeInsets.only(
                      right: 6.h,
                      bottom: 2.v,
                    ),
                    decoration: BoxDecoration(
                      color: appTheme.greenA400,
                      borderRadius: BorderRadius.circular(
                        4.h,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 8.v,
              bottom: 5.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userprofile11ItemModelObj.username!,
                  style: CustomTextStyles.titleLargeLeagueSpartanBlack900,
                ),
                SizedBox(height: 9.v),
                Text(
                  userprofile11ItemModelObj.message!,
                  style: CustomTextStyles.bodySmallLeagueSpartanGray60003,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 9.v,
              bottom: 2.v,
            ),
            child: Column(
              children: [
                Text(
                  userprofile11ItemModelObj.timeAgo!,
                  style: CustomTextStyles.bodySmallLeagueSpartanGray60004,
                ),
                SizedBox(height: 7.v),
                CustomElevatedButton(
                  height: 23.v,
                  width: 22.h,
                  text: "lbl_3".tr,
                  buttonStyle: CustomButtonStyles.fillPrimaryTL13,
                  buttonTextStyle:
                      CustomTextStyles.bodySmallLeagueSpartanWhiteA700,
                  alignment: Alignment.centerRight,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
