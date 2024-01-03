import 'bloc/settings_one_bloc.dart';
import 'models/settings_one_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/all_cities_photographer_page/all_cities_photographer_page.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:sanjay_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sanjay_s_application2/widgets/custom_bottom_bar.dart';
import 'package:sanjay_s_application2/widgets/custom_floating_button.dart';

class SettingsOneScreen extends StatelessWidget {
  SettingsOneScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<SettingsOneBloc>(
      create: (context) => SettingsOneBloc(SettingsOneState(
        settingsOneModelObj: SettingsOneModel(),
      ))
        ..add(SettingsOneInitialEvent()),
      child: SettingsOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsOneBloc, SettingsOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 2.v),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 22.h,
                      vertical: 23.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Row(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgOption1,
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                                margin: EdgeInsets.only(bottom: 4.v),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 29.h),
                                child: Text(
                                  "lbl_app_settings".tr,
                                  style: CustomTextStyles.bodyLargePoppins,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 32.v),
                        Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Row(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgProtectedIcon1,
                                height: 24.v,
                                width: 22.h,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 28.h),
                                child: Text(
                                  "lbl_permissions".tr,
                                  style: CustomTextStyles.bodyLargePoppins,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 33.v),
                        Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgHugeIconInter,
                              height: 24.v,
                              width: 27.h,
                              margin: EdgeInsets.only(bottom: 2.v),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 25.h,
                                top: 2.v,
                              ),
                              child: Text(
                                "msg_profile_settings".tr,
                                style: CustomTextStyles.bodyLargePoppins,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 34.v),
                        Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Row(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgGroupGray60001,
                                height: 22.v,
                                width: 20.h,
                                margin: EdgeInsets.only(bottom: 1.v),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 29.h),
                                child: Text(
                                  "msg_notifications_settings".tr,
                                  style: CustomTextStyles.bodyLargePoppins,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 34.v),
                      ],
                    ),
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
            bottomNavigationBar: _buildBottomAppBar(context),
            floatingActionButton: CustomFloatingButton(
              height: 46,
              width: 46,
              backgroundColor: appTheme.blue700,
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup33324,
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 56.v,
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
        text: "lbl_settings".tr,
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
  Widget _buildBottomAppBar(BuildContext context) {
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
