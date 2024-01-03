import '../models/userprofile5_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile5ItemWidget extends StatelessWidget {
  Userprofile5ItemWidget(
    this.userprofile5ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile5ItemModel userprofile5ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170.v,
      width: 161.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: userprofile5ItemModelObj?.userImage,
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
                right: 10.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 7.h,
                        vertical: 3.v,
                      ),
                      decoration: AppDecoration.fillWhiteA.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder9,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgPicture1,
                            height: 9.adaptSize,
                            width: 9.adaptSize,
                            margin: EdgeInsets.only(
                              left: 1.h,
                              top: 1.v,
                              bottom: 1.v,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 2.h,
                              top: 1.v,
                            ),
                            child: Text(
                              userprofile5ItemModelObj.userText!,
                              style: theme.textTheme.labelSmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 106.v),
                  Text(
                    userprofile5ItemModelObj.userText1!,
                    style: theme.textTheme.labelLarge,
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
