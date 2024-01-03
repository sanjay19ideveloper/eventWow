import 'bloc/language_bloc.dart';
import 'models/language_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:sanjay_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sanjay_s_application2/widgets/custom_icon_button.dart';
import 'package:sanjay_s_application2/widgets/custom_radio_button.dart';
import 'package:sanjay_s_application2/widgets/custom_search_view.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<LanguageBloc>(
      create: (context) => LanguageBloc(LanguageState(
        languageModelObj: LanguageModel(),
      ))
        ..add(LanguageInitialEvent()),
      child: LanguageScreen(),
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
            horizontal: 17.h,
            vertical: 12.v,
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 4.h,
                  right: 6.h,
                ),
                child: BlocSelector<LanguageBloc, LanguageState,
                    TextEditingController?>(
                  selector: (state) => state.searchController,
                  builder: (context, searchController) {
                    return CustomSearchView(
                      controller: searchController,
                      hintText: "lbl_search".tr,
                      hintStyle: CustomTextStyles.bodyMediumBluegray40099,
                    );
                  },
                ),
              ),
              SizedBox(height: 29.v),
              _buildLanguageSelection(context),
              SizedBox(height: 27.v),
              Divider(
                color: appTheme.gray30004,
              ),
              SizedBox(height: 17.v),
              _buildLanguageOptions(context),
              SizedBox(height: 18.v),
              _buildSaveButton(context),
              SizedBox(height: 8.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 46.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 10.v,
          bottom: 16.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "lbl_change_language".tr,
        margin: EdgeInsets.only(left: 11.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildLanguageSelection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_suggested".tr,
            style: CustomTextStyles.titleSmallBlack90001,
          ),
          SizedBox(height: 20.v),
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: BlocBuilder<LanguageBloc, LanguageState>(
              builder: (context, state) {
                return state.languageModelObj!.radioList.isNotEmpty
                    ? Column(
                        children: [
                          CustomRadioButton(
                            width: 330.h,
                            text: "lbl_english_us".tr,
                            value: state.languageModelObj?.radioList[0] ?? "",
                            groupValue: state.suggested,
                            textStyle: CustomTextStyles.bodyMediumBlack9000115,
                            isRightCheck: true,
                            onChange: (value) {
                              context
                                  .read<LanguageBloc>()
                                  .add(ChangeRadioButtonEvent(value: value));
                            },
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 19.v),
                            child: CustomRadioButton(
                              width: 329.h,
                              text: "lbl_english_uk".tr,
                              value: state.languageModelObj?.radioList[1] ?? "",
                              groupValue: state.suggested,
                              textStyle:
                                  CustomTextStyles.bodyMediumBlack9000115,
                              isRightCheck: true,
                              onChange: (value) {
                                context
                                    .read<LanguageBloc>()
                                    .add(ChangeRadioButtonEvent(value: value));
                              },
                            ),
                          ),
                        ],
                      )
                    : Container();
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLanguageOptions(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.h),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "lbl_other".tr,
              style: CustomTextStyles.titleSmallBlack90001,
            ),
          ),
          SizedBox(height: 22.v),
          BlocSelector<LanguageBloc, LanguageState, String?>(
            selector: (state) => state.radioGroup,
            builder: (context, radioGroup) {
              return CustomRadioButton(
                width: 330.h,
                text: "lbl_mandarin".tr,
                value: "lbl_mandarin".tr,
                groupValue: radioGroup,
                textStyle: CustomTextStyles.bodyMediumBlack9000115,
                isRightCheck: true,
                onChange: (value) {
                  context
                      .read<LanguageBloc>()
                      .add(ChangeRadioButton1Event(value: value));
                },
              );
            },
          ),
          SizedBox(height: 20.v),
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 3.v),
                  child: Text(
                    "lbl_hindi".tr,
                    style: CustomTextStyles.bodyMediumBlack9000115,
                  ),
                ),
                Container(
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10.h,
                    ),
                    border: Border.all(
                      color: theme.colorScheme.primary,
                      width: 1.h,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.v),
          Padding(
            padding: EdgeInsets.only(right: 3.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 5.v),
                  child: Text(
                    "lbl_spanish".tr,
                    style: CustomTextStyles.bodyMediumBlack9000115,
                  ),
                ),
                Container(
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(bottom: 3.v),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10.h,
                    ),
                    border: Border.all(
                      color: theme.colorScheme.primary,
                      width: 1.h,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 19.v),
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 3.v),
                  child: Text(
                    "lbl_french".tr,
                    style: CustomTextStyles.bodyMediumBlack9000115,
                  ),
                ),
                Container(
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10.h,
                    ),
                    border: Border.all(
                      color: theme.colorScheme.primary,
                      width: 1.h,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 18.v),
          Padding(
            padding: EdgeInsets.only(right: 3.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 3.v),
                  child: Text(
                    "lbl_arabic".tr,
                    style: CustomTextStyles.bodyMediumBlack9000115,
                  ),
                ),
                Container(
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10.h,
                    ),
                    border: Border.all(
                      color: theme.colorScheme.primary,
                      width: 1.h,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.v),
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 5.v),
                  child: Text(
                    "lbl_bengali".tr,
                    style: CustomTextStyles.bodyMediumBlack9000115,
                  ),
                ),
                Container(
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(bottom: 3.v),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10.h,
                    ),
                    border: Border.all(
                      color: theme.colorScheme.primary,
                      width: 1.h,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 19.v),
          Padding(
            padding: EdgeInsets.only(right: 3.h),
            child: BlocBuilder<LanguageBloc, LanguageState>(
              builder: (context, state) {
                return state.languageModelObj!.radioList1.isNotEmpty
                    ? Column(
                        children: [
                          CustomRadioButton(
                            width: 330.h,
                            text: "lbl_russian".tr,
                            value: state.languageModelObj?.radioList1[0] ?? "",
                            groupValue: state.bengali,
                            textStyle: CustomTextStyles.bodyMediumBlack9000115,
                            isRightCheck: true,
                            onChange: (value) {
                              context
                                  .read<LanguageBloc>()
                                  .add(ChangeRadioButton2Event(value: value));
                            },
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.v),
                            child: CustomRadioButton(
                              width: 329.h,
                              text: "lbl_indonesia".tr,
                              value:
                                  state.languageModelObj?.radioList1[1] ?? "",
                              groupValue: state.bengali,
                              textStyle:
                                  CustomTextStyles.bodyMediumBlack9000115,
                              isRightCheck: true,
                              onChange: (value) {
                                context
                                    .read<LanguageBloc>()
                                    .add(ChangeRadioButton2Event(value: value));
                              },
                            ),
                          ),
                        ],
                      )
                    : Container();
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSaveButton(BuildContext context) {
    return SizedBox(
      height: 69.v,
      width: 330.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 6.v),
              child: Text(
                "lbl_russian".tr,
                style: CustomTextStyles.bodyMediumBlack9000115,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: BlocSelector<LanguageBloc, LanguageState, String?>(
              selector: (state) => state.radioGroup1,
              builder: (context, radioGroup1) {
                return CustomRadioButton(
                  width: 329.h,
                  text: "lbl_indonesia".tr,
                  value: "lbl_indonesia".tr,
                  groupValue: radioGroup1,
                  textStyle: CustomTextStyles.bodyMediumBlack9000115,
                  isRightCheck: true,
                  onChange: (value) {
                    context
                        .read<LanguageBloc>()
                        .add(ChangeRadioButton3Event(value: value));
                  },
                );
              },
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 20.adaptSize,
              width: 20.adaptSize,
              margin: EdgeInsets.only(top: 3.v),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  10.h,
                ),
                border: Border.all(
                  color: theme.colorScheme.primary,
                  width: 1.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 58.v,
              width: 271.h,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 58.v,
                      width: 271.h,
                      padding: EdgeInsets.all(14.h),
                      decoration: AppDecoration.outlineIndigoF.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder16,
                      ),
                      child: CustomIconButton(
                        height: 30.adaptSize,
                        width: 30.adaptSize,
                        padding: EdgeInsets.all(8.h),
                        decoration: IconButtonStyleHelper.fillIndigoA,
                        alignment: Alignment.centerRight,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgArrowLeft,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 106.h),
                      child: Text(
                        "lbl_save2".tr.toUpperCase(),
                        style: CustomTextStyles.titleMediumWhiteA700,
                      ),
                    ),
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
