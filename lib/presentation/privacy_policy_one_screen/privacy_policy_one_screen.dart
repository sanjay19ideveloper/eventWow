import 'bloc/privacy_policy_one_bloc.dart';
import 'models/privacy_policy_one_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/all_cities_photographer_page/all_cities_photographer_page.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:sanjay_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sanjay_s_application2/widgets/custom_bottom_bar.dart';
import 'package:sanjay_s_application2/widgets/custom_floating_button.dart';

class PrivacyPolicyOneScreen extends StatelessWidget {
  PrivacyPolicyOneScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<PrivacyPolicyOneBloc>(
      create: (context) => PrivacyPolicyOneBloc(PrivacyPolicyOneState(
        privacyPolicyOneModelObj: PrivacyPolicyOneModel(),
      ))
        ..add(PrivacyPolicyOneInitialEvent()),
      child: PrivacyPolicyOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PrivacyPolicyOneBloc, PrivacyPolicyOneState>(
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
                      horizontal: 17.h,
                      vertical: 14.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: Text(
                            "msg_privacy_of_events".tr,
                            style: CustomTextStyles.titleSmallPoppinsBlack90001,
                          ),
                        ),
                        SizedBox(height: 13.v),
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
                        SizedBox(height: 19.v),
                        Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: Text(
                            "msg_2_privacy_of_events".tr,
                            style: CustomTextStyles.titleSmallPoppinsBlack90001,
                          ),
                        ),
                        SizedBox(height: 17.v),
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
                        SizedBox(height: 10.v),
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
        text: "lbl_privacy_policy".tr,
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
