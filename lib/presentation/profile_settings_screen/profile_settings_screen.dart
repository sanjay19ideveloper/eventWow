import 'bloc/profile_settings_bloc.dart';
import 'models/profile_settings_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/all_cities_photographer_page/all_cities_photographer_page.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:sanjay_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sanjay_s_application2/widgets/custom_bottom_bar.dart';
import 'package:sanjay_s_application2/widgets/custom_switch.dart';

class ProfileSettingsScreen extends StatelessWidget {
  ProfileSettingsScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileSettingsBloc>(
      create: (context) => ProfileSettingsBloc(ProfileSettingsState(
        profileSettingsModelObj: ProfileSettingsModel(),
      ))
        ..add(ProfileSettingsInitialEvent()),
      child: ProfileSettingsScreen(),
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
            horizontal: 22.h,
            vertical: 33.v,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "lbl_edit_profile".tr,
                    style: CustomTextStyles.titleMediumPrimary,
                  ),
                ),
              ),
              SizedBox(height: 16.v),
              Divider(
                color: appTheme.gray3004c,
              ),
              SizedBox(height: 18.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "lbl_change_password".tr,
                    style: CustomTextStyles.titleMediumPrimary,
                  ),
                ),
              ),
              SizedBox(height: 14.v),
              Divider(
                color: appTheme.gray3004c,
              ),
              SizedBox(height: 18.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "msg_refresh_automatically".tr,
                    style: CustomTextStyles.titleMediumPrimary,
                  ),
                ),
              ),
              SizedBox(height: 10.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 5.v,
                        bottom: 1.v,
                      ),
                      child: Text(
                        "msg_on_app_refresh_automatically".tr,
                        style: CustomTextStyles.bodyMediumBlack90001,
                      ),
                    ),
                    BlocSelector<ProfileSettingsBloc, ProfileSettingsState,
                        bool?>(
                      selector: (state) => state.isSelectedSwitch,
                      builder: (context, isSelectedSwitch) {
                        return CustomSwitch(
                          value: isSelectedSwitch,
                          onChange: (value) {
                            context
                                .read<ProfileSettingsBloc>()
                                .add(ChangeSwitchEvent(value: value));
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 13.v),
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
        text: "msg_profile_settings".tr,
        margin: EdgeInsets.only(left: 11.h),
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
