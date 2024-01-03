import 'bloc/filters_bloc.dart';
import 'models/filters_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:sanjay_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sanjay_s_application2/widgets/custom_drop_down.dart';
import 'package:sanjay_s_application2/widgets/custom_icon_button.dart';

class FiltersScreen extends StatelessWidget {
  const FiltersScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FiltersBloc>(
      create: (context) => FiltersBloc(FiltersState(
        filtersModelObj: FiltersModel(),
      ))
        ..add(FiltersInitialEvent()),
      child: FiltersScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 34.v),
            child: Padding(
              padding: EdgeInsets.only(
                left: 18.h,
                right: 15.h,
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl_city".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 11.v),
                  BlocSelector<FiltersBloc, FiltersState, FiltersModel?>(
                    selector: (state) => state.filtersModelObj,
                    builder: (context, filtersModelObj) {
                      return CustomDropDown(
                        icon: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 4.v, 1.h, 23.v),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgMenu12012x12,
                            height: 12.adaptSize,
                            width: 12.adaptSize,
                          ),
                        ),
                        hintText: "lbl_mumbai".tr,
                        items: filtersModelObj?.dropdownItemList ?? [],
                        contentPadding: EdgeInsets.only(left: 4.h),
                        onChanged: (value) {
                          context
                              .read<FiltersBloc>()
                              .add(ChangeDropDownEvent(value: value));
                        },
                      );
                    },
                  ),
                  SizedBox(height: 34.v),
                  _buildNoOfGuestsRow(context),
                  SizedBox(height: 32.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl_price_per_plate".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 13.v),
                  BlocSelector<FiltersBloc, FiltersState, FiltersModel?>(
                    selector: (state) => state.filtersModelObj,
                    builder: (context, filtersModelObj) {
                      return CustomDropDown(
                        icon: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 4.v, 1.h, 23.v),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgMenu12012x12,
                            height: 12.adaptSize,
                            width: 12.adaptSize,
                          ),
                        ),
                        hintText: "lbl_rs_2000".tr,
                        items: filtersModelObj?.dropdownItemList1 ?? [],
                        contentPadding: EdgeInsets.only(left: 4.h),
                        onChanged: (value) {
                          context
                              .read<FiltersBloc>()
                              .add(ChangeDropDown1Event(value: value));
                        },
                      );
                    },
                  ),
                  SizedBox(height: 33.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl_venue_type".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 13.v),
                  BlocSelector<FiltersBloc, FiltersState, FiltersModel?>(
                    selector: (state) => state.filtersModelObj,
                    builder: (context, filtersModelObj) {
                      return CustomDropDown(
                        icon: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 3.v, 1.h, 23.v),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgMenu12012x12,
                            height: 12.adaptSize,
                            width: 12.adaptSize,
                          ),
                        ),
                        hintText: "lbl_banquet_halls".tr,
                        items: filtersModelObj?.dropdownItemList2 ?? [],
                        contentPadding: EdgeInsets.only(left: 4.h),
                        onChanged: (value) {
                          context
                              .read<FiltersBloc>()
                              .add(ChangeDropDown2Event(value: value));
                        },
                      );
                    },
                  ),
                  SizedBox(height: 27.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl_space".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 11.v),
                  BlocSelector<FiltersBloc, FiltersState, FiltersModel?>(
                    selector: (state) => state.filtersModelObj,
                    builder: (context, filtersModelObj) {
                      return CustomDropDown(
                        icon: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 5.v, 1.h, 23.v),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgMenu12012x12,
                            height: 12.adaptSize,
                            width: 12.adaptSize,
                          ),
                        ),
                        hintText: "lbl_choose".tr,
                        hintStyle: CustomTextStyles.bodyMediumGray400,
                        items: filtersModelObj?.dropdownItemList3 ?? [],
                        contentPadding: EdgeInsets.only(left: 4.h),
                        onChanged: (value) {
                          context
                              .read<FiltersBloc>()
                              .add(ChangeDropDown3Event(value: value));
                        },
                      );
                    },
                  ),
                  SizedBox(height: 31.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl_room_count".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 13.v),
                  BlocSelector<FiltersBloc, FiltersState, FiltersModel?>(
                    selector: (state) => state.filtersModelObj,
                    builder: (context, filtersModelObj) {
                      return CustomDropDown(
                        icon: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 5.v, 1.h, 23.v),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgMenu12012x12,
                            height: 12.adaptSize,
                            width: 12.adaptSize,
                          ),
                        ),
                        hintText: "lbl_choose".tr,
                        hintStyle: CustomTextStyles.bodyMediumGray400,
                        items: filtersModelObj?.dropdownItemList4 ?? [],
                        contentPadding: EdgeInsets.only(left: 4.h),
                        onChanged: (value) {
                          context
                              .read<FiltersBloc>()
                              .add(ChangeDropDown4Event(value: value));
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
                        "lbl_rating".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 11.v),
                  _buildDecorationStack(context),
                  SizedBox(height: 6.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl_review_count".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 13.v),
                  _buildChooseRow(context),
                  SizedBox(height: 22.v),
                  Divider(),
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
      height: 42.v,
      leadingWidth: 46.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 10.v,
          bottom: 10.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "lbl_filters".tr,
        margin: EdgeInsets.only(left: 11.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildNoOfGuestsRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.v),
            child: Text(
              "lbl_no_of_guests".tr,
              style: CustomTextStyles.bodyMediumGray60005,
            ),
          ),
          Spacer(),
          CustomIconButton(
            height: 29.adaptSize,
            width: 29.adaptSize,
            child: CustomImageView(
              imagePath: ImageConstant.imgContrast,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 3.v,
              bottom: 4.v,
            ),
            child: Text(
              "lbl_1".tr,
              style: CustomTextStyles.bodyLargePrimaryContainer,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: CustomIconButton(
              height: 29.adaptSize,
              width: 29.adaptSize,
              child: CustomImageView(
                imagePath: ImageConstant.imgPlusPrimarycontainer,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDecorationStack(BuildContext context) {
    return SizedBox(
      height: 66.v,
      width: 340.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(
                top: 3.v,
                right: 79.h,
              ),
              child: Text(
                "lbl_decoration".tr,
                style: theme.textTheme.labelLarge,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 17.h,
                top: 11.v,
              ),
              child: Text(
                "lbl_photographer".tr,
                style: theme.textTheme.labelLarge,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Text(
                "lbl_choose".tr,
                style: CustomTextStyles.bodyMediumGray400,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 25.v),
              child: SizedBox(
                width: 340.h,
                child: Divider(),
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgMenu12012x12,
            height: 12.adaptSize,
            width: 12.adaptSize,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(top: 5.v),
          ),
          Align(
            alignment: Alignment.bottomCenter,
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
                      padding: EdgeInsets.only(left: 65.h),
                      child: Text(
                        "lbl_apply_filters".tr.toUpperCase(),
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

  /// Section Widget
  Widget _buildChooseRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_choose".tr,
            style: CustomTextStyles.bodyMediumGray400,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgMenu12012x12,
            height: 12.adaptSize,
            width: 12.adaptSize,
            margin: EdgeInsets.only(top: 5.v),
          ),
        ],
      ),
    );
  }
}
