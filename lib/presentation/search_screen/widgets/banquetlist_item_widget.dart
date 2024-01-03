import '../models/banquetlist_item_model.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:sanjay_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class BanquetlistItemWidget extends StatelessWidget {
  BanquetlistItemWidget(
    this.banquetlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BanquetlistItemModel banquetlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 43.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          children: [
            CustomImageView(
              imagePath: banquetlistItemModelObj?.banquetImage,
              height: 43.adaptSize,
              width: 43.adaptSize,
              radius: BorderRadius.circular(
                21.h,
              ),
            ),
            SizedBox(height: 6.v),
            Text(
              banquetlistItemModelObj.banquetText!,
              style: CustomTextStyles.kumbhSansGray600,
            ),
          ],
        ),
      ),
    );
  }
}
