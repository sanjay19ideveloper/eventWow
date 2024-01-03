import '../models/allphotos_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class AllphotosItemWidget extends StatelessWidget {
  AllphotosItemWidget(
    this.allphotosItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AllphotosItemModel allphotosItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: allphotosItemModelObj?.rectangle,
      height: 103.v,
      width: 120.h,
    );
  }
}
