import '../wishlist_screen/widgets/userprofile10_item_widget.dart';
import 'bloc/wishlist_bloc.dart';
import 'models/userprofile10_item_model.dart';
import 'models/wishlist_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/all_cities_photographer_page/all_cities_photographer_page.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:sanjay_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sanjay_s_application2/widgets/custom_bottom_bar.dart';

class WishlistScreen extends StatelessWidget {
  WishlistScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<WishlistBloc>(
      create: (context) => WishlistBloc(WishlistState(
        wishlistModelObj: WishlistModel(),
      ))
        ..add(WishlistInitialEvent()),
      child: WishlistScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 18.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 25.v),
              _buildUserProfile(context),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(
                  left: 15.h,
                  right: 26.h,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgStarSymbolIconYellowA700,
                      height: 14.adaptSize,
                      width: 14.adaptSize,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgStarSymbolIconYellowA700,
                      height: 14.adaptSize,
                      width: 14.adaptSize,
                      margin: EdgeInsets.only(left: 6.h),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgStarSymbolIconYellowA700,
                      height: 14.adaptSize,
                      width: 14.adaptSize,
                      margin: EdgeInsets.only(left: 5.h),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgStarSymbolIconYellowA700,
                      height: 14.adaptSize,
                      width: 14.adaptSize,
                      margin: EdgeInsets.only(left: 6.h),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgStarSymbolIconYellowA700,
                      height: 14.adaptSize,
                      width: 14.adaptSize,
                      margin: EdgeInsets.only(left: 5.h),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: Text(
                        "lbl_4_5".tr,
                        style: theme.textTheme.labelMedium,
                      ),
                    ),
                    Spacer(),
                    CustomImageView(
                      imagePath: ImageConstant.imgStarSymbolIconYellowA700,
                      height: 14.adaptSize,
                      width: 14.adaptSize,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgStarSymbolIconYellowA700,
                      height: 14.adaptSize,
                      width: 14.adaptSize,
                      margin: EdgeInsets.only(left: 6.h),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgStarSymbolIconYellowA700,
                      height: 14.adaptSize,
                      width: 14.adaptSize,
                      margin: EdgeInsets.only(left: 5.h),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgStarSymbolIconYellowA700,
                      height: 14.adaptSize,
                      width: 14.adaptSize,
                      margin: EdgeInsets.only(left: 6.h),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgStarSymbolIconYellowA700,
                      height: 14.adaptSize,
                      width: 14.adaptSize,
                      margin: EdgeInsets.only(left: 5.h),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: Text(
                        "lbl_4_5".tr,
                        style: theme.textTheme.labelMedium,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 15.h,
                  right: 80.h,
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
        text: "lbl_wishlist".tr,
        margin: EdgeInsets.only(left: 11.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: BlocSelector<WishlistBloc, WishlistState, WishlistModel?>(
        selector: (state) => state.wishlistModelObj,
        builder: (context, wishlistModelObj) {
          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 171.v,
              crossAxisCount: 2,
              mainAxisSpacing: 13.h,
              crossAxisSpacing: 13.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: wishlistModelObj?.userprofile10ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Userprofile10ItemModel model =
                  wishlistModelObj?.userprofile10ItemList[index] ??
                      Userprofile10ItemModel();
              return Userprofile10ItemWidget(
                model,
              );
            },
          );
        },
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
