import 'bloc/list_your_business_bloc.dart';
import 'models/list_your_business_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:sanjay_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sanjay_s_application2/widgets/custom_drop_down.dart';
import 'package:sanjay_s_application2/widgets/custom_text_form_field.dart';

class ListYourBusinessScreen extends StatelessWidget {
  const ListYourBusinessScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ListYourBusinessBloc>(
      create: (context) => ListYourBusinessBloc(ListYourBusinessState(
        listYourBusinessModelObj: ListYourBusinessModel(),
      ))
        ..add(ListYourBusinessInitialEvent()),
      child: ListYourBusinessScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 22.v),
            child: Padding(
              padding: EdgeInsets.only(
                left: 17.h,
                right: 17.h,
                bottom: 5.v,
              ),
              child: Column(
                children: [
                  _buildChooseBusiness(context),
                  SizedBox(height: 17.v),
                  _buildAbout(context),
                  SizedBox(height: 17.v),
                  Divider(),
                  SizedBox(height: 23.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl_description".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.v),
                  _buildDescription(context),
                  SizedBox(height: 35.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl_payment_terms".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 8.v),
                  _buildPaymentTerms(context),
                  SizedBox(height: 35.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "msg_top_most_completed".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 8.v),
                  _buildTopMostCompleted(context),
                  SizedBox(height: 22.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "msg_special_packages".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 19.v),
                  _buildSpecialPackages(context),
                  SizedBox(height: 29.v),
                  _buildRegisteredMonopoly(context),
                  SizedBox(height: 17.v),
                  Divider(),
                  SizedBox(height: 29.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "msg_ready_to_work_any".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 14.v),
                  BlocSelector<ListYourBusinessBloc, ListYourBusinessState,
                      ListYourBusinessModel?>(
                    selector: (state) => state.listYourBusinessModelObj,
                    builder: (context, listYourBusinessModelObj) {
                      return CustomDropDown(
                        icon: Container(
                          margin: EdgeInsets.only(
                            left: 30.h,
                            right: 6.h,
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgMenu12012x12,
                            height: 12.adaptSize,
                            width: 12.adaptSize,
                          ),
                        ),
                        hintText: "lbl_no".tr,
                        hintStyle: CustomTextStyles.titleSmallBlack9000114,
                        items: listYourBusinessModelObj?.dropdownItemList ?? [],
                        onChanged: (value) {
                          context
                              .read<ListYourBusinessBloc>()
                              .add(ChangeDropDownEvent(value: value));
                        },
                      );
                    },
                  ),
                  SizedBox(height: 26.v),
                  _buildYourWorkKeyFeatures(context),
                  SizedBox(height: 26.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "msg_any_special_plan".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 14.v),
                  BlocSelector<ListYourBusinessBloc, ListYourBusinessState,
                      ListYourBusinessModel?>(
                    selector: (state) => state.listYourBusinessModelObj,
                    builder: (context, listYourBusinessModelObj) {
                      return CustomDropDown(
                        icon: Container(
                          margin: EdgeInsets.only(
                            left: 30.h,
                            right: 6.h,
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgMenu12012x12,
                            height: 12.adaptSize,
                            width: 12.adaptSize,
                          ),
                        ),
                        hintText: "lbl_choose".tr,
                        items:
                            listYourBusinessModelObj?.dropdownItemList1 ?? [],
                        onChanged: (value) {
                          context
                              .read<ListYourBusinessBloc>()
                              .add(ChangeDropDown1Event(value: value));
                        },
                      );
                    },
                  ),
                  SizedBox(height: 16.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "msg_complementory_package".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 14.v),
                  BlocSelector<ListYourBusinessBloc, ListYourBusinessState,
                      ListYourBusinessModel?>(
                    selector: (state) => state.listYourBusinessModelObj,
                    builder: (context, listYourBusinessModelObj) {
                      return CustomDropDown(
                        icon: Container(
                          margin: EdgeInsets.only(
                            left: 30.h,
                            right: 6.h,
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgMenu12012x12,
                            height: 12.adaptSize,
                            width: 12.adaptSize,
                          ),
                        ),
                        hintText: "lbl_choose".tr,
                        items:
                            listYourBusinessModelObj?.dropdownItemList2 ?? [],
                        onChanged: (value) {
                          context
                              .read<ListYourBusinessBloc>()
                              .add(ChangeDropDown2Event(value: value));
                        },
                      );
                    },
                  ),
                  SizedBox(height: 22.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "msg_your_work_key_features".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 14.v),
                  BlocSelector<ListYourBusinessBloc, ListYourBusinessState,
                      ListYourBusinessModel?>(
                    selector: (state) => state.listYourBusinessModelObj,
                    builder: (context, listYourBusinessModelObj) {
                      return CustomDropDown(
                        icon: Container(
                          margin: EdgeInsets.only(
                            left: 30.h,
                            right: 6.h,
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgMenu12012x12,
                            height: 12.adaptSize,
                            width: 12.adaptSize,
                          ),
                        ),
                        hintText: "lbl_enter_atleast_2".tr,
                        items:
                            listYourBusinessModelObj?.dropdownItemList3 ?? [],
                        onChanged: (value) {
                          context
                              .read<ListYourBusinessBloc>()
                              .add(ChangeDropDown3Event(value: value));
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 46.v,
      leadingWidth: 46.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 9.v,
          bottom: 15.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "msg_list_your_business".tr,
        margin: EdgeInsets.only(left: 11.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildChooseBusiness(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_choose_business".tr,
            style: theme.textTheme.bodyMedium,
          ),
          SizedBox(height: 15.v),
          Padding(
            padding: EdgeInsets.only(right: 2.h),
            child: _buildEnglish(
              context,
              englishText: "lbl_photographer".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAbout(BuildContext context) {
    return Column(
      children: [
        Divider(),
        SizedBox(height: 4.v),
        SizedBox(
          height: 423.v,
          width: 340.h,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 4.h,
                    top: 17.v,
                  ),
                  child: Text(
                    "lbl_about".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 4.h,
                  top: 108.v,
                  right: 6.h,
                ),
                child: _buildServices(
                  context,
                  servicesLabel: "lbl_choose_language".tr,
                  chooseLabel: "lbl_english".tr,
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 178.v),
                  child: SizedBox(
                    width: 340.h,
                    child: Divider(),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 4.h,
                  right: 6.h,
                  bottom: 74.v,
                ),
                child: _buildServices(
                  context,
                  servicesLabel: "lbl_services".tr,
                  chooseLabel: "lbl_choose".tr,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 56.v),
                  child: SizedBox(
                    width: 340.h,
                    child: Divider(),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 4.h,
                    bottom: 168.v,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_open_now".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                      SizedBox(height: 19.v),
                      Text(
                        "lbl_choose".tr,
                        style: CustomTextStyles.bodySmallGray40002,
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 150.v),
                  child: SizedBox(
                    width: 340.h,
                    child: Divider(),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 48.v),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: BlocSelector<ListYourBusinessBloc,
                            ListYourBusinessState, TextEditingController?>(
                          selector: (state) => state.descriptionvalueController,
                          builder: (context, descriptionvalueController) {
                            return CustomTextFormField(
                              width: 76.h,
                              controller: descriptionvalueController,
                              hintText: "msg_enter_here".tr,
                              hintStyle: CustomTextStyles.bodySmallGray40002,
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 21.v),
                      Divider(),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 4.h,
                    bottom: 14.v,
                  ),
                  child: Text(
                    "msg_did_you_take_events".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: EdgeInsets.only(right: 1.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 11.h,
                    vertical: 16.v,
                  ),
                  decoration: AppDecoration.outlineGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder9,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_photographer".tr,
                        style: CustomTextStyles.titleSmallBlack9000114,
                      ),
                      SizedBox(height: 14.v),
                      Text(
                        "msg_wedding_events_planner".tr,
                        style: CustomTextStyles.titleSmallBlack9000114,
                      ),
                      SizedBox(height: 15.v),
                      Text(
                        "msg_social_events_planner".tr,
                        style: CustomTextStyles.titleSmallBlack9000114,
                      ),
                      SizedBox(height: 14.v),
                      Text(
                        "msg_political_events".tr,
                        style: CustomTextStyles.titleSmallBlack9000114,
                      ),
                      SizedBox(height: 13.v),
                      Text(
                        "msg_school_events_planner".tr,
                        style: CustomTextStyles.titleSmallBlack9000114,
                      ),
                      SizedBox(height: 18.v),
                      Text(
                        "msg_opening_ceremony".tr,
                        style: CustomTextStyles.titleSmallBlack9000114,
                      ),
                      SizedBox(height: 13.v),
                      Text(
                        "msg_musical_event_planner".tr,
                        style: CustomTextStyles.titleSmallBlack9000114,
                      ),
                      SizedBox(height: 17.v),
                      Text(
                        "msg_fashion_show_events".tr,
                        style: CustomTextStyles.titleSmallBlack9000114,
                      ),
                      SizedBox(height: 14.v),
                      Text(
                        "msg_virtual_event_planner".tr,
                        style: CustomTextStyles.titleSmallBlack9000114,
                      ),
                      SizedBox(height: 14.v),
                      Text(
                        "msg_sports_events_planner".tr,
                        style: CustomTextStyles.titleSmallBlack9000114,
                      ),
                      SizedBox(height: 15.v),
                      Text(
                        "msg_brand_promotion".tr,
                        style: CustomTextStyles.titleSmallBlack9000114,
                      ),
                      SizedBox(height: 14.v),
                      Text(
                        "msg_consult_film_promotion".tr,
                        style: CustomTextStyles.titleSmallBlack9000114,
                      ),
                      SizedBox(height: 6.v),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 4.h,
            right: 6.h,
          ),
          child: _buildEnglish(
            context,
            englishText: "lbl_choose".tr,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildDescription(BuildContext context) {
    return BlocSelector<ListYourBusinessBloc, ListYourBusinessState,
        TextEditingController?>(
      selector: (state) => state.descriptionController,
      builder: (context, descriptionController) {
        return CustomTextFormField(
          controller: descriptionController,
          hintText: "msg_enter_here".tr,
          hintStyle: CustomTextStyles.bodySmallGray40002,
          contentPadding: EdgeInsets.symmetric(horizontal: 4.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPaymentTerms(BuildContext context) {
    return BlocSelector<ListYourBusinessBloc, ListYourBusinessState,
        TextEditingController?>(
      selector: (state) => state.paymentTermsController,
      builder: (context, paymentTermsController) {
        return CustomTextFormField(
          controller: paymentTermsController,
          hintText: "msg_like_take_50_amount".tr,
          hintStyle: CustomTextStyles.bodySmallGray40002,
          contentPadding: EdgeInsets.symmetric(horizontal: 4.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildTopMostCompleted(BuildContext context) {
    return BlocSelector<ListYourBusinessBloc, ListYourBusinessState,
        TextEditingController?>(
      selector: (state) => state.topMostCompletedController,
      builder: (context, topMostCompletedController) {
        return CustomTextFormField(
          controller: topMostCompletedController,
          hintText: "msg_enter_here2".tr,
          hintStyle: CustomTextStyles.bodySmallGray40002,
          contentPadding: EdgeInsets.symmetric(horizontal: 4.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSpecialPackages(BuildContext context) {
    return BlocSelector<ListYourBusinessBloc, ListYourBusinessState,
        TextEditingController?>(
      selector: (state) => state.specialPackagesController,
      builder: (context, specialPackagesController) {
        return CustomTextFormField(
          controller: specialPackagesController,
          hintText: "lbl_enter".tr,
          hintStyle: CustomTextStyles.bodySmallGray40002,
          contentPadding: EdgeInsets.symmetric(horizontal: 4.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildRegisteredMonopoly(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "msg_registed_any_monopoly".tr,
              style: theme.textTheme.bodyMedium,
            ),
          ),
        ),
        SizedBox(height: 14.v),
        Padding(
          padding: EdgeInsets.only(
            left: 4.h,
            right: 6.h,
          ),
          child: _buildEnglish(
            context,
            englishText: "lbl_choose".tr,
          ),
        ),
        SizedBox(height: 17.v),
        Divider(),
        SizedBox(height: 29.v),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "msg_range_minimum_to".tr,
              style: theme.textTheme.bodyMedium,
            ),
          ),
        ),
        SizedBox(height: 14.v),
        Padding(
          padding: EdgeInsets.only(
            left: 4.h,
            right: 6.h,
          ),
          child: _buildEnglish(
            context,
            englishText: "lbl_choose".tr,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildYourWorkKeyFeatures(BuildContext context) {
    return BlocSelector<ListYourBusinessBloc, ListYourBusinessState,
        TextEditingController?>(
      selector: (state) => state.yourWorkKeyFeaturesController,
      builder: (context, yourWorkKeyFeaturesController) {
        return CustomTextFormField(
          controller: yourWorkKeyFeaturesController,
          hintText: "msg_description".tr,
          hintStyle: CustomTextStyles.bodySmallGray40002,
          textInputAction: TextInputAction.done,
          contentPadding: EdgeInsets.symmetric(horizontal: 2.h),
        );
      },
    );
  }

  /// Common widget
  Widget _buildEnglish(
    BuildContext context, {
    required String englishText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          englishText,
          style: CustomTextStyles.titleMediumMedium_1.copyWith(
            color: appTheme.black90001,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgMenu12012x12,
          height: 12.adaptSize,
          width: 12.adaptSize,
          margin: EdgeInsets.only(bottom: 6.v),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildServices(
    BuildContext context, {
    required String servicesLabel,
    required String chooseLabel,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          servicesLabel,
          style: theme.textTheme.bodyMedium!.copyWith(
            color: appTheme.gray600,
          ),
        ),
        SizedBox(height: 16.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 5.v),
              child: Text(
                chooseLabel,
                style: CustomTextStyles.bodySmallGray40002.copyWith(
                  color: appTheme.gray40002,
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgMenu12012x12,
              height: 12.adaptSize,
              width: 12.adaptSize,
              margin: EdgeInsets.only(bottom: 6.v),
            ),
          ],
        ),
      ],
    );
  }
}
