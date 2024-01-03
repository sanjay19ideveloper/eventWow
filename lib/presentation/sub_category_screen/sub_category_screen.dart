import 'bloc/sub_category_bloc.dart';
import 'models/sub_category_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/all_cities_photographer_page/all_cities_photographer_page.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:sanjay_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sanjay_s_application2/widgets/custom_bottom_bar.dart';

class SubCategoryScreen extends StatelessWidget {
  SubCategoryScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<SubCategoryBloc>(
      create: (context) => SubCategoryBloc(SubCategoryState(
        subCategoryModelObj: SubCategoryModel(),
      ))
        ..add(SubCategoryInitialEvent()),
      child: SubCategoryScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubCategoryBloc, SubCategoryState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 17.h),
              child: Column(
                children: [
                  SizedBox(height: 25.v),
                  Padding(
                    padding: EdgeInsets.only(left: 14.h),
                    child: _buildPreWeddingShoot(
                      context,
                      dynamicText: "lbl_videography".tr,
                    ),
                  ),
                  SizedBox(height: 33.v),
                  Padding(
                    padding: EdgeInsets.only(left: 14.h),
                    child: _buildPreWeddingShoot(
                      context,
                      dynamicText: "msg_pre_wedding_shoot".tr,
                    ),
                  ),
                  SizedBox(height: 32.v),
                  Padding(
                    padding: EdgeInsets.only(left: 14.h),
                    child: _buildPreWeddingShoot(
                      context,
                      dynamicText: "lbl_drone_camers".tr,
                    ),
                  ),
                  SizedBox(height: 35.v),
                  Padding(
                    padding: EdgeInsets.only(left: 14.h),
                    child: _buildPreWeddingShoot(
                      context,
                      dynamicText: "msg_instant_photo_booth".tr,
                    ),
                  ),
                  SizedBox(height: 33.v),
                  Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: _buildFilmShootingCamera(
                      context,
                      dynamicText: "msg_360_video_booth".tr,
                    ),
                  ),
                  SizedBox(height: 33.v),
                  Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: _buildFilmShootingCamera(
                      context,
                      dynamicText: "msg_film_shooting_camera".tr,
                    ),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 17.h,
                        right: 79.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 1.v),
                            child: Text(
                              "lbl_photographer".tr,
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                          Text(
                            "lbl_decoration".tr,
                            style: theme.textTheme.labelLarge,
                          ),
                        ],
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
        text: "lbl_sub_category".tr,
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

  /// Common widget
  Widget _buildPreWeddingShoot(
    BuildContext context, {
    required String dynamicText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          dynamicText,
          style: CustomTextStyles.labelLargeBlack90001_2.copyWith(
            color: appTheme.black90001,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgMenu120,
          height: 12.adaptSize,
          width: 12.adaptSize,
          margin: EdgeInsets.only(bottom: 3.v),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFilmShootingCamera(
    BuildContext context, {
    required String dynamicText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(
            dynamicText,
            style: CustomTextStyles.labelLargeBlack90001_2.copyWith(
              color: appTheme.black90001,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgMenu120,
          height: 12.adaptSize,
          width: 12.adaptSize,
          margin: EdgeInsets.only(bottom: 6.v),
        ),
      ],
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
