import '../models/userprofile9_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile9ItemWidget extends StatelessWidget {
  Userprofile9ItemWidget(
    this.userprofile9ItemModelObj, {
    Key? key,
    this.onTapImgUserImage1,
    this.onTapTxtUserName1,
  }) : super(
          key: key,
        );

  Userprofile9ItemModel userprofile9ItemModelObj;

  VoidCallback? onTapImgUserImage1;

  VoidCallback? onTapTxtUserName1;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        children: [
          SizedBox(
            height: 87.adaptSize,
            width: 87.adaptSize,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse145,
                  height: 87.adaptSize,
                  width: 87.adaptSize,
                  radius: BorderRadius.circular(
                    43.h,
                  ),
                  alignment: Alignment.center,
                  onTap: () {
                    onTapImgUserImage1!.call();
                  },
                ),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 87.adaptSize,
                    width: 87.adaptSize,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse145,
                          height: 87.adaptSize,
                          width: 87.adaptSize,
                          radius: BorderRadius.circular(
                            43.h,
                          ),
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            height: 87.adaptSize,
                            width: 87.adaptSize,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgEllipse145,
                                  height: 87.adaptSize,
                                  width: 87.adaptSize,
                                  radius: BorderRadius.circular(
                                    43.h,
                                  ),
                                  alignment: Alignment.center,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgEllipse145,
                                  height: 87.adaptSize,
                                  width: 87.adaptSize,
                                  radius: BorderRadius.circular(
                                    43.h,
                                  ),
                                  alignment: Alignment.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 11.v),
          SizedBox(
            height: 21.v,
            width: 64.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      onTapTxtUserName1!.call();
                    },
                    child: Text(
                      userprofile9ItemModelObj.userName1!,
                      style: CustomTextStyles.titleMediumGray600,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 21.v,
                    width: 64.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            userprofile9ItemModelObj.userName2!,
                            style: CustomTextStyles.titleMediumGray600,
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            height: 21.v,
                            width: 64.h,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    userprofile9ItemModelObj.userName3!,
                                    style: CustomTextStyles.titleMediumGray600,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    userprofile9ItemModelObj.userName4!,
                                    style: CustomTextStyles.titleMediumGray600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
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
