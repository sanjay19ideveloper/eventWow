import 'bloc/terms_conditions_one_bloc.dart';
import 'models/terms_conditions_one_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:sanjay_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sanjay_s_application2/widgets/custom_elevated_button.dart';
import 'package:sanjay_s_application2/widgets/custom_outlined_button.dart';

class TermsConditionsOneScreen extends StatelessWidget {
  const TermsConditionsOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<TermsConditionsOneBloc>(
      create: (context) => TermsConditionsOneBloc(TermsConditionsOneState(
        termsConditionsOneModelObj: TermsConditionsOneModel(),
      ))
        ..add(TermsConditionsOneInitialEvent()),
      child: TermsConditionsOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TermsConditionsOneBloc, TermsConditionsOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 17.h,
                vertical: 12.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Text(
                      "lbl_terms".tr,
                      style: CustomTextStyles.titleSmallPoppinsBlack90001,
                    ),
                  ),
                  SizedBox(height: 14.v),
                  Container(
                    width: 333.h,
                    margin: EdgeInsets.only(left: 6.h),
                    child: Text(
                      "msg_lorem_ipsum_is_simply4".tr,
                      maxLines: 15,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallPoppinsGray50001,
                    ),
                  ),
                  SizedBox(height: 17.v),
                  Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Text(
                      "lbl_2_use_license".tr,
                      style: CustomTextStyles.titleSmallPoppinsBlack90001,
                    ),
                  ),
                  SizedBox(height: 18.v),
                  Container(
                    width: 333.h,
                    margin: EdgeInsets.only(left: 6.h),
                    child: Text(
                      "msg_lorem_ipsum_is_simply4".tr,
                      maxLines: 15,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallPoppinsGray50001,
                    ),
                  ),
                  SizedBox(height: 6.v),
                ],
              ),
            ),
            bottomNavigationBar: _buildDecline(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 57.v,
      leadingWidth: 36.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrow3,
        margin: EdgeInsets.only(
          left: 22.h,
          top: 23.v,
          bottom: 18.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "msg_terms_conditions".tr,
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgUserBlack90001,
          margin: EdgeInsets.symmetric(
            horizontal: 15.h,
            vertical: 10.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildDecline(BuildContext context) {
    return Container(
      height: 97.v,
      width: double.maxFinite,
      margin: EdgeInsets.only(bottom: 1.v),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.fromLTRB(69.h, 23.v, 17.h, 35.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 9.v),
                    decoration: AppDecoration.outlineBlue.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder9,
                    ),
                    child: Text(
                      "lbl_decline".tr,
                      style: CustomTextStyles.titleMediumMontserratLightblue800,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 47.h,
                      vertical: 7.v,
                    ),
                    decoration: AppDecoration.fillBlue.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder9,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 3.v),
                      child: Text(
                        "lbl_accept".tr,
                        style: CustomTextStyles.titleMediumMontserratWhiteA700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 17.h,
                vertical: 21.v,
              ),
              decoration: AppDecoration.outlineBlack90001.copyWith(
                borderRadius: BorderRadiusStyle.customBorderTL29,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomOutlinedButton(
                    height: 52.v,
                    width: 159.h,
                    text: "lbl_decline".tr,
                    margin: EdgeInsets.only(
                      left: 3.h,
                      bottom: 2.v,
                    ),
                    buttonStyle: CustomButtonStyles.outlineBlue,
                    buttonTextStyle:
                        CustomTextStyles.titleMediumMontserratLightblue800,
                  ),
                  CustomElevatedButton(
                    height: 52.v,
                    width: 154.h,
                    text: "lbl_accept".tr,
                    margin: EdgeInsets.only(bottom: 2.v),
                    buttonStyle: CustomButtonStyles.fillBlue,
                    buttonTextStyle:
                        CustomTextStyles.titleMediumMontserratWhiteA700,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
