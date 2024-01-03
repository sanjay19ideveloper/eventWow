import '../vendor_profile_screen/widgets/eventlist_item_widget.dart';
import 'bloc/vendor_profile_bloc.dart';
import 'models/eventlist_item_model.dart';
import 'models/vendor_profile_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/all_cities_photographer_page/all_cities_photographer_page.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:sanjay_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sanjay_s_application2/widgets/custom_bottom_bar.dart';
import 'package:sanjay_s_application2/widgets/custom_icon_button.dart';

class VendorProfileScreen extends StatelessWidget {
  VendorProfileScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<VendorProfileBloc>(
      create: (context) => VendorProfileBloc(VendorProfileState(
        vendorProfileModelObj: VendorProfileModel(),
      ))
        ..add(VendorProfileInitialEvent()),
      child: VendorProfileScreen(),
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
            horizontal: 17.h,
            vertical: 31.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16.v),
              CustomImageView(
                imagePath: ImageConstant.imgEllipse104,
                height: 95.adaptSize,
                width: 95.adaptSize,
                radius: BorderRadius.circular(
                  47.h,
                ),
                alignment: Alignment.center,
              ),
              SizedBox(height: 16.v),
              Padding(
                padding: EdgeInsets.only(left: 90.h),
                child: Text(
                  "lbl_swetank_gawde".tr,
                  style: CustomTextStyles.titleMedium19,
                ),
              ),
              SizedBox(height: 3.v),
              Padding(
                padding: EdgeInsets.only(left: 110.h),
                child: Text(
                  "lbl_1_202_555_0161".tr,
                  style: CustomTextStyles.labelLargeGray900cc,
                ),
              ),
              SizedBox(height: 39.v),
              _buildEventList(context),
              SizedBox(height: 19.v),
              _buildBusinessInfo(context),
              SizedBox(height: 22.v),
              Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomIconButton(
                      height: 61.adaptSize,
                      width: 61.adaptSize,
                      padding: EdgeInsets.all(19.h),
                      decoration: IconButtonStyleHelper.fillPrimaryTL30,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGroup355,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 41.h),
                      child: CustomIconButton(
                        height: 61.adaptSize,
                        width: 61.adaptSize,
                        padding: EdgeInsets.all(19.h),
                        decoration: IconButtonStyleHelper.fillPrimaryTL30,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGroup53,
                        ),
                      ),
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
        text: "msg_photographer_profile".tr,
        margin: EdgeInsets.only(left: 11.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildEventList(BuildContext context) {
    return Container(
      height: 127.v,
      padding: EdgeInsets.all(17.h),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder9,
      ),
      child: BlocSelector<VendorProfileBloc, VendorProfileState,
          VendorProfileModel?>(
        selector: (state) => state.vendorProfileModelObj,
        builder: (context, vendorProfileModelObj) {
          return ListView.separated(
            padding: EdgeInsets.only(right: 5.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 33.h,
              );
            },
            itemCount: vendorProfileModelObj?.eventlistItemList.length ?? 0,
            itemBuilder: (context, index) {
              EventlistItemModel model =
                  vendorProfileModelObj?.eventlistItemList[index] ??
                      EventlistItemModel();
              return EventlistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBusinessInfo(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5.h),
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder9,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildEventRow(
            context,
            eventsText: "lbl_business_since".tr,
            oneThousandText: "lbl_july_15_2019".tr,
          ),
          SizedBox(height: 16.v),
          _buildEventRow(
            context,
            eventsText: "lbl_events".tr,
            oneThousandText: "lbl_1000".tr,
          ),
          SizedBox(height: 12.v),
          _buildEventRow(
            context,
            eventsText: "lbl_address".tr,
            oneThousandText: "lbl_sec_13_pune".tr,
          ),
          SizedBox(height: 3.v),
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

  /// Common widget
  Widget _buildEventRow(
    BuildContext context, {
    required String eventsText,
    required String oneThousandText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          eventsText,
          style: CustomTextStyles.labelLargeGray900cc.copyWith(
            color: appTheme.gray900Cc,
          ),
        ),
        Text(
          oneThousandText,
          style: CustomTextStyles.labelLargeBlack90001_3.copyWith(
            color: appTheme.black90001,
          ),
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
