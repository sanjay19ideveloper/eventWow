import '../models/userprofilelist1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/widgets/custom_icon_button.dart';
import 'package:sanjay_s_application2/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class Userprofilelist1ItemWidget extends StatelessWidget {
  Userprofilelist1ItemWidget(
    this.userprofilelist1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofilelist1ItemModel userprofilelist1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 157.v,
      width: 149.h,
      margin: EdgeInsets.only(top: 6.v),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: userprofilelist1ItemModelObj?.userImage,
            height: 157.v,
            width: 149.h,
            radius: BorderRadius.circular(
              15.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                right: 8.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomIconButton(
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                    padding: EdgeInsets.all(4.h),
                    alignment: Alignment.centerRight,
                    child: CustomImageView(
                      imagePath: userprofilelist1ItemModelObj?.bookmark,
                    ),
                  ),
                  SizedBox(height: 77.v),
                  Row(
                    children: [
                      CustomRatingBar(
                        ignoreGestures: true,
                        initialRating: 0,
                        itemSize: 13,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Text(
                          userprofilelist1ItemModelObj.ratingText!,
                          style: theme.textTheme.labelMedium,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.v),
                  Text(
                    userprofilelist1ItemModelObj.photographerText!,
                    style: CustomTextStyles.labelLarge12,
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
