import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder9,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 172.v,
            width: 336.h,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle4259,
                  height: 172.v,
                  width: 336.h,
                  radius: BorderRadius.circular(
                    10.h,
                  ),
                  alignment: Alignment.center,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 9.v,
                    right: 8.h,
                  ),
                  child: CustomIconButton(
                    height: 23.v,
                    width: 25.h,
                    padding: EdgeInsets.all(5.h),
                    decoration: IconButtonStyleHelper.outlineBlack,
                    alignment: Alignment.topRight,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgBookmark,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(
              left: 23.h,
              right: 25.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userprofileItemModelObj.movieTitle!,
                      style: CustomTextStyles.labelLargeBlack90001SemiBold_1,
                    ),
                    SizedBox(height: 5.v),
                    Container(
                      width: 84.h,
                      margin: EdgeInsets.only(right: 6.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            userprofileItemModelObj.moviePrice!,
                            style: CustomTextStyles.titleSmallPrimary,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.v),
                            child: Text(
                              userprofileItemModelObj.priceUnit!,
                              style: CustomTextStyles.kumbhSansBlack90001Medium,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 5.v,
                    bottom: 27.v,
                  ),
                  child: Text(
                    userprofileItemModelObj.location!,
                    style: CustomTextStyles.kumbhSansBlack90001Medium,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 9.v),
        ],
      ),
    );
  }
}
