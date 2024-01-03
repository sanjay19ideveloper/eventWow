import 'bloc/permissions_bloc.dart';
import 'models/permissions_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/all_cities_photographer_page/all_cities_photographer_page.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:sanjay_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sanjay_s_application2/widgets/custom_bottom_bar.dart';
import 'package:sanjay_s_application2/widgets/custom_switch.dart';

class PermissionsScreen extends StatelessWidget {
  PermissionsScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<PermissionsBloc>(
      create: (context) => PermissionsBloc(PermissionsState(
        permissionsModelObj: PermissionsModel(),
      ))
        ..add(PermissionsInitialEvent()),
      child: PermissionsScreen(),
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
            horizontal: 20.h,
            vertical: 38.v,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    "lbl_camera".tr,
                    style: CustomTextStyles.titleMediumPrimary,
                  ),
                ),
              ),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 20.h,
                  right: 17.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 5.v,
                        bottom: 1.v,
                      ),
                      child: Text(
                        "msg_allow_your_camera".tr,
                        style: CustomTextStyles.bodyMediumBlack90001,
                      ),
                    ),
                    BlocSelector<PermissionsBloc, PermissionsState, bool?>(
                      selector: (state) => state.isSelectedSwitch,
                      builder: (context, isSelectedSwitch) {
                        return CustomSwitch(
                          value: isSelectedSwitch,
                          onChange: (value) {
                            context
                                .read<PermissionsBloc>()
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
                indent: 6.h,
              ),
              SizedBox(height: 17.v),
              _buildLocationColumn(context),
              SizedBox(height: 13.v),
              Divider(
                color: appTheme.gray3004c,
                indent: 4.h,
              ),
              SizedBox(height: 18.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 17.h),
                  child: Text(
                    "lbl_storage".tr,
                    style: CustomTextStyles.titleMediumPrimary,
                  ),
                ),
              ),
              SizedBox(height: 10.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 17.h,
                  right: 20.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 5.v,
                        bottom: 1.v,
                      ),
                      child: Text(
                        "msg_allow_your_storage".tr,
                        style: CustomTextStyles.bodyMediumBlack90001,
                      ),
                    ),
                    BlocSelector<PermissionsBloc, PermissionsState, bool?>(
                      selector: (state) => state.isSelectedSwitch2,
                      builder: (context, isSelectedSwitch2) {
                        return CustomSwitch(
                          value: isSelectedSwitch2,
                          onChange: (value) {
                            context
                                .read<PermissionsBloc>()
                                .add(ChangeSwitch2Event(value: value));
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
                indent: 3.h,
                endIndent: 3.h,
              ),
              SizedBox(height: 17.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 17.h),
                  child: Text(
                    "lbl_contacts".tr,
                    style: CustomTextStyles.titleMediumPrimary,
                  ),
                ),
              ),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 17.h,
                  right: 19.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 5.v,
                        bottom: 1.v,
                      ),
                      child: Text(
                        "msg_allow_your_contacts".tr,
                        style: CustomTextStyles.bodyMediumBlack90001,
                      ),
                    ),
                    BlocSelector<PermissionsBloc, PermissionsState, bool?>(
                      selector: (state) => state.isSelectedSwitch3,
                      builder: (context, isSelectedSwitch3) {
                        return CustomSwitch(
                          value: isSelectedSwitch3,
                          onChange: (value) {
                            context
                                .read<PermissionsBloc>()
                                .add(ChangeSwitch3Event(value: value));
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
                indent: 4.h,
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
        text: "lbl_permissions".tr,
        margin: EdgeInsets.only(left: 11.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildLocationColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 3.h),
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_location".tr,
            style: CustomTextStyles.titleMediumPrimary,
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 5.v,
                    bottom: 1.v,
                  ),
                  child: Text(
                    "msg_allow_your_location".tr,
                    style: CustomTextStyles.bodyMediumBlack90001,
                  ),
                ),
                BlocSelector<PermissionsBloc, PermissionsState, bool?>(
                  selector: (state) => state.isSelectedSwitch1,
                  builder: (context, isSelectedSwitch1) {
                    return CustomSwitch(
                      value: isSelectedSwitch1,
                      onChange: (value) {
                        context
                            .read<PermissionsBloc>()
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
