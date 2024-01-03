import '../models/allphotostwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class AllphotostwoItemWidget extends StatelessWidget {
  AllphotostwoItemWidget(
    this.allphotostwoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AllphotostwoItemModel allphotostwoItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: allphotostwoItemModelObj?.rectangle,
      height: 162.v,
      width: 375.h,
    );
  }
}
