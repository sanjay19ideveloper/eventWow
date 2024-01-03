import '../models/userprofile7_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile7ItemWidget extends StatelessWidget {
  Userprofile7ItemWidget(
    this.userprofile7ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile7ItemModel userprofile7ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse64,
          height: 45.adaptSize,
          width: 45.adaptSize,
        ),
        Container(
          width: 160.h,
          margin: EdgeInsets.only(
            left: 14.h,
            bottom: 2.v,
          ),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "lbl_ronald_c_kinch".tr,
                  style: CustomTextStyles.titleSmallOnErrorContainer14,
                ),
                TextSpan(
                  text: " ",
                ),
                TextSpan(
                  text: "lbl_like_you_events".tr,
                  style: CustomTextStyles.bodyMediumBluegray80001,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            top: 6.v,
            bottom: 23.v,
          ),
          child: Text(
            userprofile7ItemModelObj.timeAgo!,
            style: CustomTextStyles.bodySmallBluegray80001,
          ),
        ),
      ],
    );
  }
}
