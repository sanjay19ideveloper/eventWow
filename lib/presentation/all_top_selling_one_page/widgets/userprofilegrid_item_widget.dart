import '../models/userprofilegrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/widgets/custom_icon_button.dart';
import 'package:sanjay_s_application2/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class UserprofilegridItemWidget extends StatelessWidget {
  UserprofilegridItemWidget(
    this.userprofilegridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofilegridItemModel userprofilegridItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 170.v,
        width: 161.h,
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: userprofilegridItemModelObj?.image,
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
                  right: 7.h,
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
                        imagePath: userprofilegridItemModelObj?.bookmarkIcon,
                      ),
                    ),
                    SizedBox(height: 83.v),
                    Row(
                      children: [
                        CustomRatingBar(
                          ignoreGestures: true,
                          initialRating: 0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 7.h),
                          child: Text(
                            userprofilegridItemModelObj.ratingText!,
                            style: theme.textTheme.labelMedium,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 13.v),
                    Text(
                      userprofilegridItemModelObj.photographerText!,
                      style: theme.textTheme.labelLarge,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
