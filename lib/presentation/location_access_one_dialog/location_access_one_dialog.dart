import 'bloc/location_access_one_bloc.dart';
import 'models/location_access_one_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class LocationAccessOneDialog extends StatelessWidget {
  const LocationAccessOneDialog({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<LocationAccessOneBloc>(
      create: (context) => LocationAccessOneBloc(LocationAccessOneState(
        locationAccessOneModelObj: LocationAccessOneModel(),
      ))
        ..add(LocationAccessOneInitialEvent()),
      child: LocationAccessOneDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 318.h,
      padding: EdgeInsets.symmetric(
        horizontal: 31.h,
        vertical: 39.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 8.v),
          Container(
            height: 127.adaptSize,
            width: 127.adaptSize,
            padding: EdgeInsets.all(38.h),
            decoration: AppDecoration.fillPrimary.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder63,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgLocationPin1,
              height: 50.adaptSize,
              width: 50.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          SizedBox(height: 43.v),
          Text(
            "lbl_enable_location".tr,
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 17.v),
          SizedBox(
            width: 252.h,
            child: Text(
              "msg_we_need_access_to".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodySmallBlack90001,
            ),
          ),
          SizedBox(height: 39.v),
          CustomElevatedButton(
            height: 52.v,
            text: "lbl_enable_now".tr,
            buttonStyle: CustomButtonStyles.fillPrimary,
            buttonTextStyle: CustomTextStyles.titleMediumWhiteA700_1,
          ),
          SizedBox(height: 10.v),
          CustomElevatedButton(
            height: 52.v,
            text: "lbl_not_now".tr,
            buttonStyle: CustomButtonStyles.fillOnError,
            buttonTextStyle: theme.textTheme.bodyLarge!,
          ),
        ],
      ),
    );
  }
}
