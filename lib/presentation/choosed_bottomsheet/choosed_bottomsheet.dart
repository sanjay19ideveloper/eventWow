import 'bloc/choosed_bloc.dart';
import 'models/choosed_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/widgets/custom_elevated_button.dart';
import 'package:sanjay_s_application2/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class ChoosedBottomsheet extends StatelessWidget {
  const ChoosedBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ChoosedBloc>(
      create: (context) => ChoosedBloc(ChoosedState(
        choosedModelObj: ChoosedModel(),
      ))
        ..add(ChoosedInitialEvent()),
      child: ChoosedBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildBuyNowScrollView(context);
  }

  /// Section Widget
  Widget _buildBuyNowScrollView(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(right: 2.h),
        padding: EdgeInsets.symmetric(
          horizontal: 36.h,
          vertical: 11.v,
        ),
        decoration: AppDecoration.fillWhiteA.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL38,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 2.v,
              width: 26.h,
              decoration: BoxDecoration(
                color: theme.colorScheme.onPrimaryContainer,
                borderRadius: BorderRadius.circular(
                  1.h,
                ),
              ),
            ),
            SizedBox(height: 27.v),
            SizedBox(
              height: 166.v,
              width: 287.h,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: EdgeInsets.only(right: 4.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 26.h,
                        vertical: 31.v,
                      ),
                      decoration: AppDecoration.fillGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder9,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: Text(
                              "lbl_starter".tr,
                              style: CustomTextStyles.titleMediumPrimaryBold,
                            ),
                          ),
                          SizedBox(height: 20.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "lbl_rs_600".tr,
                                style: theme.textTheme.displayMedium,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 28.v,
                                  bottom: 10.v,
                                ),
                                child: Text(
                                  "lbl_for_3_monts".tr,
                                  style: CustomTextStyles.labelLargeGray40003,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomIconButton(
                    height: 23.adaptSize,
                    width: 23.adaptSize,
                    padding: EdgeInsets.all(5.h),
                    decoration: IconButtonStyleHelper.fillPrimary,
                    alignment: Alignment.topRight,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgCheckmark,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 31.v),
            CustomElevatedButton(
              height: 53.v,
              text: "lbl_buy_now".tr.toUpperCase(),
              margin: EdgeInsets.only(
                left: 36.h,
                right: 16.h,
              ),
              buttonStyle: CustomButtonStyles.outlineIndigoFTL13,
              buttonTextStyle: CustomTextStyles.titleSmallWhiteA700,
              alignment: Alignment.centerRight,
            ),
            SizedBox(height: 23.v),
          ],
        ),
      ),
    );
  }
}
