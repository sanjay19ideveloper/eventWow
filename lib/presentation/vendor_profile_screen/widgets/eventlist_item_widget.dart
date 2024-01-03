import '../models/eventlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class EventlistItemWidget extends StatelessWidget {
  EventlistItemWidget(
    this.eventlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  EventlistItemModel eventlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 78.h,
      child: Column(
        children: [
          CustomIconButton(
            height: 48.adaptSize,
            width: 48.adaptSize,
            padding: EdgeInsets.all(6.h),
            decoration: IconButtonStyleHelper.fillPrimaryTL24,
            child: CustomImageView(
              imagePath: eventlistItemModelObj?.iconButton,
            ),
          ),
          SizedBox(height: 6.v),
          Text(
            eventlistItemModelObj.eventText!,
            style: CustomTextStyles.labelLargePoppinsBlack90001SemiBold,
          ),
          SizedBox(height: 5.v),
          Text(
            eventlistItemModelObj.photographerText!,
            style: CustomTextStyles.labelSmallGray900cc,
          ),
        ],
      ),
    );
  }
}
