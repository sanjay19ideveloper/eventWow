import '../models/lawngrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class LawngridItemWidget extends StatelessWidget {
  LawngridItemWidget(
    this.lawngridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LawngridItemModel lawngridItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: appTheme.blueGray10003,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Container(
        height: 171.v,
        width: 168.h,
        decoration: AppDecoration.fillBlueGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: lawngridItemModelObj?.lawnImage1,
              height: 44.adaptSize,
              width: 44.adaptSize,
              alignment: Alignment.center,
            ),
            CustomImageView(
              imagePath: lawngridItemModelObj?.lawnImage2,
              height: 44.adaptSize,
              width: 44.adaptSize,
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
