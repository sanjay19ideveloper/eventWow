import '../models/banquettext_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class BanquettextItemWidget extends StatelessWidget {
  BanquettextItemWidget(
    this.banquettextItemModelObj, {
    Key? key,
    this.onTapImgBanquetImage,
  }) : super(
          key: key,
        );

  BanquettextItemModel banquettextItemModelObj;

  VoidCallback? onTapImgBanquetImage;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        children: [
          CustomImageView(
            imagePath: banquettextItemModelObj?.banquetImage,
            height: 43.adaptSize,
            width: 43.adaptSize,
            radius: BorderRadius.circular(
              21.h,
            ),
            onTap: () {
              onTapImgBanquetImage!.call();
            },
          ),
          SizedBox(height: 6.v),
          Text(
            banquettextItemModelObj.banquetText!,
            style: CustomTextStyles.kumbhSansGray600,
          ),
        ],
      ),
    );
  }
}
