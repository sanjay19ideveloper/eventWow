import 'bloc/list_your_business_one_bloc.dart';
import 'models/list_your_business_one_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:sanjay_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sanjay_s_application2/widgets/custom_drop_down.dart';
import 'package:sanjay_s_application2/widgets/custom_text_form_field.dart';

class ListYourBusinessOneScreen extends StatelessWidget {
  const ListYourBusinessOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ListYourBusinessOneBloc>(
      create: (context) => ListYourBusinessOneBloc(ListYourBusinessOneState(
        listYourBusinessOneModelObj: ListYourBusinessOneModel(),
      ))
        ..add(ListYourBusinessOneInitialEvent()),
      child: ListYourBusinessOneScreen(),
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
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl_choose_business".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 15.v),
                  BlocSelector<ListYourBusinessOneBloc,
                      ListYourBusinessOneState, ListYourBusinessOneModel?>(
                    selector: (state) => state.listYourBusinessOneModelObj,
                    builder: (context, listYourBusinessOneModelObj) {
                      return CustomDropDown(
                        icon: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 1.v, 6.h, 25.v),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgMenu12012x12,
                            height: 12.adaptSize,
                            width: 12.adaptSize,
                          ),
                        ),
                        hintText: "lbl_photographer".tr,
                        items:
                            listYourBusinessOneModelObj?.dropdownItemList ?? [],
                        contentPadding: EdgeInsets.only(left: 4.h),
                        onChanged: (value) {
                          context
                              .read<ListYourBusinessOneBloc>()
                              .add(ChangeDropDownEvent(value: value));
                        },
                      );
                    },
                  ),
                  SizedBox(height: 21.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl_about".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 12.v),
                  _buildEnterHere(context),
                  SizedBox(height: 23.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl_choose_language".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 13.v),
                  BlocSelector<ListYourBusinessOneBloc,
                      ListYourBusinessOneState, ListYourBusinessOneModel?>(
                    selector: (state) => state.listYourBusinessOneModelObj,
                    builder: (context, listYourBusinessOneModelObj) {
                      return CustomDropDown(
                        icon: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 1.v, 6.h, 25.v),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgMenu12012x12,
                            height: 12.adaptSize,
                            width: 12.adaptSize,
                          ),
                        ),
                        hintText: "lbl_english".tr,
                        items: listYourBusinessOneModelObj?.dropdownItemList1 ??
                            [],
                        contentPadding: EdgeInsets.only(left: 4.h),
                        onChanged: (value) {
                          context
                              .read<ListYourBusinessOneBloc>()
                              .add(ChangeDropDown1Event(value: value));
                        },
                      );
                    },
                  ),
                  SizedBox(height: 23.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl_open_now".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 19.v),
                  _buildChoose(context),
                  SizedBox(height: 21.v),
                  _buildServices(context),
                  SizedBox(height: 23.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "msg_did_you_take_events".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 14.v),
                  BlocSelector<ListYourBusinessOneBloc,
                      ListYourBusinessOneState, ListYourBusinessOneModel?>(
                    selector: (state) => state.listYourBusinessOneModelObj,
                    builder: (context, listYourBusinessOneModelObj) {
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
                        items: listYourBusinessOneModelObj?.dropdownItemList3 ??
                            [],
                        onChanged: (value) {
                          context
                              .read<ListYourBusinessOneBloc>()
                              .add(ChangeDropDown3Event(value: value));
                        },
                      );
                    },
                  ),
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
                  _buildAmount(context),
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
                  _buildListYourBusiness(context),
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
                  SizedBox(height: 14.v),
                  BlocSelector<ListYourBusinessOneBloc,
                      ListYourBusinessOneState, ListYourBusinessOneModel?>(
                    selector: (state) => state.listYourBusinessOneModelObj,
                    builder: (context, listYourBusinessOneModelObj) {
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
                        items: listYourBusinessOneModelObj?.dropdownItemList4 ??
                            [],
                        onChanged: (value) {
                          context
                              .read<ListYourBusinessOneBloc>()
                              .add(ChangeDropDown4Event(value: value));
                        },
                      );
                    },
                  ),
                  SizedBox(height: 29.v),
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
                  BlocSelector<ListYourBusinessOneBloc,
                      ListYourBusinessOneState, ListYourBusinessOneModel?>(
                    selector: (state) => state.listYourBusinessOneModelObj,
                    builder: (context, listYourBusinessOneModelObj) {
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
                        items: listYourBusinessOneModelObj?.dropdownItemList5 ??
                            [],
                        onChanged: (value) {
                          context
                              .read<ListYourBusinessOneBloc>()
                              .add(ChangeDropDown5Event(value: value));
                        },
                      );
                    },
                  ),
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
                  BlocSelector<ListYourBusinessOneBloc,
                      ListYourBusinessOneState, ListYourBusinessOneModel?>(
                    selector: (state) => state.listYourBusinessOneModelObj,
                    builder: (context, listYourBusinessOneModelObj) {
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
                        items: listYourBusinessOneModelObj?.dropdownItemList6 ??
                            [],
                        onChanged: (value) {
                          context
                              .read<ListYourBusinessOneBloc>()
                              .add(ChangeDropDown6Event(value: value));
                        },
                      );
                    },
                  ),
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
                  BlocSelector<ListYourBusinessOneBloc,
                      ListYourBusinessOneState, ListYourBusinessOneModel?>(
                    selector: (state) => state.listYourBusinessOneModelObj,
                    builder: (context, listYourBusinessOneModelObj) {
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
                        items: listYourBusinessOneModelObj?.dropdownItemList7 ??
                            [],
                        onChanged: (value) {
                          context
                              .read<ListYourBusinessOneBloc>()
                              .add(ChangeDropDown7Event(value: value));
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
                        "msg_any_special_plan".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 14.v),
                  BlocSelector<ListYourBusinessOneBloc,
                      ListYourBusinessOneState, ListYourBusinessOneModel?>(
                    selector: (state) => state.listYourBusinessOneModelObj,
                    builder: (context, listYourBusinessOneModelObj) {
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
                        items: listYourBusinessOneModelObj?.dropdownItemList8 ??
                            [],
                        onChanged: (value) {
                          context
                              .read<ListYourBusinessOneBloc>()
                              .add(ChangeDropDown8Event(value: value));
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
                  BlocSelector<ListYourBusinessOneBloc,
                      ListYourBusinessOneState, ListYourBusinessOneModel?>(
                    selector: (state) => state.listYourBusinessOneModelObj,
                    builder: (context, listYourBusinessOneModelObj) {
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
                        items: listYourBusinessOneModelObj?.dropdownItemList9 ??
                            [],
                        onChanged: (value) {
                          context
                              .read<ListYourBusinessOneBloc>()
                              .add(ChangeDropDown9Event(value: value));
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
                  BlocSelector<ListYourBusinessOneBloc,
                      ListYourBusinessOneState, ListYourBusinessOneModel?>(
                    selector: (state) => state.listYourBusinessOneModelObj,
                    builder: (context, listYourBusinessOneModelObj) {
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
                            listYourBusinessOneModelObj?.dropdownItemList10 ??
                                [],
                        onChanged: (value) {
                          context
                              .read<ListYourBusinessOneBloc>()
                              .add(ChangeDropDown10Event(value: value));
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
  Widget _buildEnterHere(BuildContext context) {
    return BlocSelector<ListYourBusinessOneBloc, ListYourBusinessOneState,
        TextEditingController?>(
      selector: (state) => state.enterHereController,
      builder: (context, enterHereController) {
        return CustomTextFormField(
          controller: enterHereController,
          hintText: "msg_enter_here".tr,
          hintStyle: CustomTextStyles.bodySmallGray40002,
          contentPadding: EdgeInsets.symmetric(horizontal: 4.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildChoose(BuildContext context) {
    return BlocSelector<ListYourBusinessOneBloc, ListYourBusinessOneState,
        TextEditingController?>(
      selector: (state) => state.chooseController,
      builder: (context, chooseController) {
        return CustomTextFormField(
          controller: chooseController,
          hintText: "lbl_choose".tr,
          hintStyle: CustomTextStyles.bodySmallGray40002,
          contentPadding: EdgeInsets.symmetric(horizontal: 4.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildServices(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 4.h),
          child: Text(
            "lbl_services".tr,
            style: theme.textTheme.bodyMedium,
          ),
        ),
        SizedBox(height: 16.v),
        BlocSelector<ListYourBusinessOneBloc, ListYourBusinessOneState,
            ListYourBusinessOneModel?>(
          selector: (state) => state.listYourBusinessOneModelObj,
          builder: (context, listYourBusinessOneModelObj) {
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
              items: listYourBusinessOneModelObj?.dropdownItemList2 ?? [],
              onChanged: (value) {
                context
                    .read<ListYourBusinessOneBloc>()
                    .add(ChangeDropDown2Event(value: value));
              },
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildDescription(BuildContext context) {
    return BlocSelector<ListYourBusinessOneBloc, ListYourBusinessOneState,
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
  Widget _buildAmount(BuildContext context) {
    return BlocSelector<ListYourBusinessOneBloc, ListYourBusinessOneState,
        TextEditingController?>(
      selector: (state) => state.amountController,
      builder: (context, amountController) {
        return CustomTextFormField(
          controller: amountController,
          hintText: "msg_like_take_50_amount".tr,
          hintStyle: CustomTextStyles.bodySmallGray40002,
          contentPadding: EdgeInsets.symmetric(horizontal: 4.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildListYourBusiness(BuildContext context) {
    return BlocSelector<ListYourBusinessOneBloc, ListYourBusinessOneState,
        TextEditingController?>(
      selector: (state) => state.listYourBusinessController,
      builder: (context, listYourBusinessController) {
        return CustomTextFormField(
          controller: listYourBusinessController,
          hintText: "msg_enter_here2".tr,
          hintStyle: CustomTextStyles.bodySmallGray40002,
          textInputAction: TextInputAction.done,
          contentPadding: EdgeInsets.symmetric(horizontal: 4.h),
        );
      },
    );
  }
}
