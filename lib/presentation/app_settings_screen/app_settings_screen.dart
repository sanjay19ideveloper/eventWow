import 'bloc/app_settings_bloc.dart';
import 'models/app_settings_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/all_cities_photographer_page/all_cities_photographer_page.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:sanjay_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sanjay_s_application2/widgets/custom_bottom_bar.dart';
import 'package:sanjay_s_application2/widgets/custom_switch.dart';

class AppSettingsScreen extends StatelessWidget {
  AppSettingsScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<AppSettingsBloc>(
      create: (context) => AppSettingsBloc(AppSettingsState(
        appSettingsModelObj: AppSettingsModel(),
      ))
        ..add(AppSettingsInitialEvent()),
      child: AppSettingsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 23.h,
            vertical: 29.v,
          ),
          child: Column(
            children: [
              _buildBackgroundAudio(context),
              SizedBox(height: 32.v),
              _buildCellularData(context),
              SizedBox(height: 13.v),
              Divider(
                color: appTheme.gray3004c,
              ),
              SizedBox(height: 22.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 14.h),
                  child: Text(
                    "msg_application_quality".tr,
                    style: CustomTextStyles.titleMediumPrimary,
                  ),
                ),
              ),
              SizedBox(height: 10.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 14.h,
                  right: 17.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 4.v),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "msg_standard_recommended".tr,
                            style: CustomTextStyles.bodyMediumBlack90001,
                          ),
                          SizedBox(height: 4.v),
                          Text(
                            "msg_faster_and_users".tr,
                            style: CustomTextStyles.bodySmallGray5000311,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 21.adaptSize,
                      width: 21.adaptSize,
                      margin: EdgeInsets.only(bottom: 20.v),
                      decoration: AppDecoration.outlineBlueGrayF,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgClosePrimary21x21,
                            height: 21.adaptSize,
                            width: 21.adaptSize,
                            alignment: Alignment.center,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgArrowLeftWhiteA700,
                            height: 14.adaptSize,
                            width: 14.adaptSize,
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12.v),
              Divider(
                color: appTheme.gray3004c,
              ),
              SizedBox(height: 7.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 14.h,
                  right: 17.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 5.v),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_high_definition".tr,
                            style: CustomTextStyles.bodyMediumBlack90001,
                          ),
                          SizedBox(height: 3.v),
                          Text(
                            "msg_uses_more_storage".tr,
                            style: CustomTextStyles.bodySmallGray5000311,
                          ),
                        ],
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgSettingsBlack90001,
                      height: 21.adaptSize,
                      width: 21.adaptSize,
                      margin: EdgeInsets.only(bottom: 20.v),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12.v),
              Divider(
                color: appTheme.gray3004c,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
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
        text: "lbl_app_settings".tr,
        margin: EdgeInsets.only(left: 11.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildBackgroundAudio(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_background_audio".tr,
            style: CustomTextStyles.titleMediumPrimary,
          ),
          SizedBox(height: 9.v),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 6.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "msg_continue_playback".tr,
                        style: CustomTextStyles.bodyMediumBlack90001,
                      ),
                      SizedBox(height: 2.v),
                      SizedBox(
                        width: 223.h,
                        child: Text(
                          "msg_enable_this_setting".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodySmallGray5000311.copyWith(
                            height: 1.38,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              BlocSelector<AppSettingsBloc, AppSettingsState, bool?>(
                selector: (state) => state.isSelectedSwitch,
                builder: (context, isSelectedSwitch) {
                  return CustomSwitch(
                    margin: EdgeInsets.only(
                      left: 32.h,
                      bottom: 34.v,
                    ),
                    value: isSelectedSwitch,
                    onChange: (value) {
                      context
                          .read<AppSettingsBloc>()
                          .add(ChangeSwitchEvent(value: value));
                    },
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCellularData(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_cellular_data".tr,
            style: CustomTextStyles.titleMediumPrimary,
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(right: 3.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 4.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "msg_cellular_data_for".tr,
                    style: CustomTextStyles.bodyMediumBlack90001,
                  ),
                ),
                BlocSelector<AppSettingsBloc, AppSettingsState, bool?>(
                  selector: (state) => state.isSelectedSwitch1,
                  builder: (context, isSelectedSwitch1) {
                    return CustomSwitch(
                      value: isSelectedSwitch1,
                      onChange: (value) {
                        context
                            .read<AppSettingsBloc>()
                            .add(ChangeSwitch1Event(value: value));
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Homepage:
        return AppRoutes.allCitiesPhotographerPage;
      case BottomBarEnum.Vendor:
        return "/";
      case BottomBarEnum.Einvites:
        return "/";
      case BottomBarEnum.Wishlist:
        return "/";
      case BottomBarEnum.Checklist:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.allCitiesPhotographerPage:
        return AllCitiesPhotographerPage();
      default:
        return DefaultWidget();
    }
  }
}
