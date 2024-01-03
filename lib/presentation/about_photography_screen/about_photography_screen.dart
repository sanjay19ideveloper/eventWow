import 'bloc/about_photography_bloc.dart';
import 'models/about_photography_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/all_cities_photographer_page/all_cities_photographer_page.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:sanjay_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sanjay_s_application2/widgets/custom_bottom_bar.dart';
import 'package:sanjay_s_application2/widgets/custom_icon_button.dart';
import 'package:sanjay_s_application2/widgets/custom_outlined_button.dart';

class AboutPhotographyScreen extends StatelessWidget {
  AboutPhotographyScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<AboutPhotographyBloc>(
      create: (context) => AboutPhotographyBloc(AboutPhotographyState(
        aboutPhotographyModelObj: AboutPhotographyModel(),
      ))
        ..add(AboutPhotographyInitialEvent()),
      child: AboutPhotographyScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AboutPhotographyBloc, AboutPhotographyState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 18.v),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 22.h,
                          right: 16.h,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: Text(
                                "msg_about_photography2".tr,
                                style: CustomTextStyles
                                    .titleSmallBlack90001SemiBold,
                              ),
                            ),
                            SizedBox(height: 17.v),
                            Container(
                              width: 328.h,
                              margin: EdgeInsets.symmetric(horizontal: 4.h),
                              child: Text(
                                "msg_lorem_ipsum_is_simply".tr,
                                maxLines: 16,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodySmallBlack90001,
                              ),
                            ),
                            SizedBox(height: 25.v),
                            Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: Text(
                                "lbl_since".tr,
                                style: CustomTextStyles.labelMediumBlack90001,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: Text(
                                "msg_4_years_5_months".tr,
                                style: CustomTextStyles.bodySmallBlack9000110_1,
                              ),
                            ),
                            SizedBox(height: 11.v),
                            Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: Text(
                                "msg_candid_photography".tr,
                                style: CustomTextStyles.labelMediumBlack90001,
                              ),
                            ),
                            SizedBox(height: 3.v),
                            Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: Text(
                                "lbl_18000_per_day".tr,
                                style: CustomTextStyles.bodySmallBlack9000110_1,
                              ),
                            ),
                            SizedBox(height: 285.v),
                            Divider(
                              color: appTheme.gray10004,
                              endIndent: 4.h,
                            ),
                            SizedBox(height: 17.v),
                            _buildAboutPhotographyRow(context),
                            SizedBox(height: 10.v),
                            SizedBox(
                              width: 336.h,
                              child: Text(
                                "msg_lorem_ipsum_lorem".tr,
                                maxLines: null,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodySmallBlack900018_1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: _buildBottomBar(context),
          ),
        );
      },
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
        text: "msg_about_photography".tr,
        margin: EdgeInsets.only(left: 11.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildAboutPhotographyRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 7.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomIconButton(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.all(8.h),
            decoration: IconButtonStyleHelper.outlineGray,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup150,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 9.h,
              top: 8.v,
              bottom: 8.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_john_k".tr,
                  style: CustomTextStyles.labelMediumBlack90001SemiBold,
                ),
                Text(
                  "lbl_10_months_ago".tr,
                  style: CustomTextStyles.kumbhSansGray50005Regular,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgSend,
            height: 11.adaptSize,
            width: 11.adaptSize,
            margin: EdgeInsets.only(
              top: 12.v,
              bottom: 15.v,
            ),
          ),
          CustomOutlinedButton(
            height: 14.v,
            width: 34.h,
            text: "lbl_4_5".tr,
            margin: EdgeInsets.only(
              left: 9.h,
              top: 9.v,
              bottom: 15.v,
            ),
            buttonTextStyle: theme.textTheme.labelSmall!,
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
