import 'bloc/lawn_business_one_bloc.dart';
import 'models/lawn_business_one_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class LawnBusinessOneDialog extends StatelessWidget {
  const LawnBusinessOneDialog({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<LawnBusinessOneBloc>(
      create: (context) => LawnBusinessOneBloc(LawnBusinessOneState(
        lawnBusinessOneModelObj: LawnBusinessOneModel(),
      ))
        ..add(LawnBusinessOneInitialEvent()),
      child: LawnBusinessOneDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 318.h,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 35.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 170.v,
            width: 176.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 2.adaptSize,
                    width: 2.adaptSize,
                    margin: EdgeInsets.only(top: 70.v),
                    decoration: BoxDecoration(
                      color: appTheme.lightBlue4004c,
                      borderRadius: BorderRadius.circular(
                        1.h,
                      ),
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.img89776SuccessTick,
                  height: 170.v,
                  width: 174.h,
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
          SizedBox(height: 28.v),
          SizedBox(
            width: 189.h,
            child: Text(
              "msg_your_details_are".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.titleLarge,
            ),
          ),
          SizedBox(height: 41.v),
          CustomElevatedButton(
            text: "lbl_ok".tr.toUpperCase(),
            margin: EdgeInsets.only(left: 7.h),
          ),
          SizedBox(height: 3.v),
        ],
      ),
    );
  }
}
