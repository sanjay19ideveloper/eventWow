import '../models/locationinfo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class LocationinfoItemWidget extends StatelessWidget {
  LocationinfoItemWidget(
    this.locationinfoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LocationinfoItemModel locationinfoItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgBell68,
          height: 23.adaptSize,
          width: 23.adaptSize,
          margin: EdgeInsets.only(
            top: 9.v,
            bottom: 8.v,
          ),
        ),
        Spacer(
          flex: 37,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              locationinfoItemModelObj.hotelName!,
              style: CustomTextStyles.labelLargeBlack90001,
            ),
            SizedBox(height: 8.v),
            Text(
              locationinfoItemModelObj.address!,
              style: CustomTextStyles.bodySmallGray50001,
            ),
          ],
        ),
        Spacer(
          flex: 62,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 11.v),
          child: Text(
            locationinfoItemModelObj.distance!,
            style: CustomTextStyles.labelLargeBlack90001,
          ),
        ),
      ],
    );
  }
}
