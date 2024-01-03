import 'bloc/help_faqs_bloc.dart';
import 'models/help_faqs_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:sanjay_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sanjay_s_application2/widgets/custom_text_form_field.dart';

class HelpFaqsScreen extends StatelessWidget {
  const HelpFaqsScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<HelpFaqsBloc>(
      create: (context) => HelpFaqsBloc(HelpFaqsState(
        helpFaqsModelObj: HelpFaqsModel(),
      ))
        ..add(HelpFaqsInitialEvent()),
      child: HelpFaqsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 21.v,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "lbl_faq".tr,
                    style: CustomTextStyles.titleSmallBlack9000114_1,
                  ),
                ),
              ),
              SizedBox(height: 20.v),
              BlocSelector<HelpFaqsBloc, HelpFaqsState, TextEditingController?>(
                selector: (state) => state.searchController,
                builder: (context, searchController) {
                  return CustomTextFormField(
                    controller: searchController,
                    hintText: "lbl_search".tr,
                    hintStyle: CustomTextStyles.bodySmallGray40002,
                    textInputAction: TextInputAction.done,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 21.h,
                      vertical: 16.v,
                    ),
                    borderDecoration: TextFormFieldStyleHelper.outlineGray,
                    filled: false,
                  );
                },
              ),
              SizedBox(height: 26.v),
              Column(
                children: [
                  _buildWhatIsThisApp(context),
                  SizedBox(height: 19.v),
                  _buildHowDoICancel(
                    context,
                    dynamicText: "lbl_how_to_use".tr,
                  ),
                  SizedBox(height: 19.v),
                  _buildHowDoICancel(
                    context,
                    dynamicText: "msg_how_do_i_cancel".tr,
                  ),
                  SizedBox(height: 19.v),
                  _buildHowDoICancel(
                    context,
                    dynamicText: "msg_is_this_free_to".tr,
                  ),
                  SizedBox(height: 19.v),
                  _buildHowDoICancel(
                    context,
                    dynamicText: "msg_what_is_this_app".tr,
                  ),
                ],
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 45.v,
      leadingWidth: 46.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 9.v,
          bottom: 14.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "lbl_help_faqs".tr,
        margin: EdgeInsets.only(left: 11.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildWhatIsThisApp(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder9,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 3.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "msg_what_is_this_app".tr,
                        style: CustomTextStyles.titleSmallBlack9000114_2,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgMenu115,
                        height: 12.adaptSize,
                        width: 12.adaptSize,
                        margin: EdgeInsets.only(bottom: 3.v),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 11.v),
                Divider(
                  color: appTheme.gray30004,
                ),
              ],
            ),
          ),
          SizedBox(height: 12.v),
          Container(
            width: 280.h,
            margin: EdgeInsets.only(
              left: 1.h,
              right: 23.h,
            ),
            child: Text(
              "msg_lorem_ipsum_is_simply2".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmallGray5000110,
            ),
          ),
          SizedBox(height: 6.v),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildHowDoICancel(
    BuildContext context, {
    required String dynamicText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder9,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 3.v),
            child: Text(
              dynamicText,
              style: CustomTextStyles.titleSmallBlack9000114_2.copyWith(
                color: appTheme.black90001,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgMenu12012x12,
            height: 12.adaptSize,
            width: 12.adaptSize,
            margin: EdgeInsets.only(
              top: 4.v,
              right: 1.h,
              bottom: 3.v,
            ),
          ),
        ],
      ),
    );
  }
}
