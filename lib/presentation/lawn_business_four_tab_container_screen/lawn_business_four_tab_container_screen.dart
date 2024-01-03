import '../lawn_business_four_tab_container_screen/widgets/lawnbusinessfourtabcontainer_item_widget.dart';
import '../lawn_business_four_tab_container_screen/widgets/userprofile4_item_widget.dart';
import '../lawn_business_four_tab_container_screen/widgets/userprofilelist_item_widget.dart';
import 'bloc/lawn_business_four_tab_container_bloc.dart';
import 'models/lawn_business_four_tab_container_model.dart';
import 'models/lawnbusinessfourtabcontainer_item_model.dart';
import 'models/userprofile4_item_model.dart';
import 'models/userprofilelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/lawn_business_four_page/lawn_business_four_page.dart';
import 'package:sanjay_s_application2/widgets/custom_icon_button.dart';
import 'package:sanjay_s_application2/widgets/custom_outlined_button.dart';

class LawnBusinessFourTabContainerScreen extends StatefulWidget {
  const LawnBusinessFourTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  LawnBusinessFourTabContainerScreenState createState() =>
      LawnBusinessFourTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<LawnBusinessFourTabContainerBloc>(
      create: (context) =>
          LawnBusinessFourTabContainerBloc(LawnBusinessFourTabContainerState(
        lawnBusinessFourTabContainerModelObj:
            LawnBusinessFourTabContainerModel(),
      ))
            ..add(LawnBusinessFourTabContainerInitialEvent()),
      child: LawnBusinessFourTabContainerScreen(),
    );
  }
}

class LawnBusinessFourTabContainerScreenState
    extends State<LawnBusinessFourTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              height: 3006.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  _buildArrowDownStack(context),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 36.v),
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.h,
                        vertical: 27.v,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusStyle.customBorderTL15,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildTheCineLawnsRow(context),
                          SizedBox(height: 8.v),
                          Padding(
                            padding: EdgeInsets.only(left: 17.h),
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 34.v,
                                  width: 75.h,
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "lbl_photo_video".tr,
                                          style: CustomTextStyles
                                              .labelSmallGray50005,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text(
                                          "lbl_50_000".tr,
                                          style: CustomTextStyles
                                              .titleLargePrimary,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 5.h,
                                    top: 18.v,
                                    bottom: 5.v,
                                  ),
                                  child: Text(
                                    "lbl_per_day".tr,
                                    style: theme.textTheme.labelSmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 17.h),
                            child: Text(
                              "lbl_pricing_info".tr,
                              style:
                                  CustomTextStyles.labelSmallGray50005.copyWith(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                          SizedBox(height: 15.v),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 36.h,
                                right: 21.h,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgStarSymbolIcon,
                                    height: 11.adaptSize,
                                    width: 11.adaptSize,
                                    margin: EdgeInsets.only(
                                      top: 3.v,
                                      bottom: 5.v,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 4.h,
                                      top: 4.v,
                                      bottom: 4.v,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "lbl_4_5".tr,
                                            style: CustomTextStyles
                                                .labelMediumBlack90001_1,
                                          ),
                                          TextSpan(
                                            text: " ",
                                          ),
                                          TextSpan(
                                            text: "lbl_90".tr,
                                            style: CustomTextStyles
                                                .kumbhSansGray50005Medium,
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Spacer(
                                    flex: 25,
                                  ),
                                  SizedBox(
                                    height: 17.v,
                                    child: VerticalDivider(
                                      width: 1.h,
                                      thickness: 1.v,
                                      color: appTheme.gray30004,
                                    ),
                                  ),
                                  Spacer(
                                    flex: 28,
                                  ),
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgBookmarkBlack90001,
                                    height: 13.v,
                                    width: 9.h,
                                    margin: EdgeInsets.symmetric(vertical: 3.v),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 5.h,
                                      top: 2.v,
                                      bottom: 3.v,
                                    ),
                                    child: Text(
                                      "lbl_shortlist".tr,
                                      style: CustomTextStyles
                                          .labelMediumBlack90001_2,
                                    ),
                                  ),
                                  Spacer(
                                    flex: 25,
                                  ),
                                  SizedBox(
                                    height: 17.v,
                                    child: VerticalDivider(
                                      width: 1.h,
                                      thickness: 1.v,
                                      color: appTheme.gray30004,
                                    ),
                                  ),
                                  Spacer(
                                    flex: 21,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgSend,
                                    height: 11.adaptSize,
                                    width: 11.adaptSize,
                                    margin: EdgeInsets.symmetric(vertical: 4.v),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 3.h,
                                      top: 2.v,
                                      bottom: 3.v,
                                    ),
                                    child: Text(
                                      "lbl_share".tr,
                                      style: CustomTextStyles
                                          .labelMediumBlack90001_2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 23.v),
                          Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text(
                              "lbl_albums_32".tr,
                              style: CustomTextStyles.labelLargeBlack90001_2,
                            ),
                          ),
                          SizedBox(height: 39.v),
                          Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: _buildLawnsStack(
                              context,
                              userImage: ImageConstant.imgRectangle4263,
                              lawns: "lbl_lawns".tr,
                            ),
                          ),
                          SizedBox(height: 18.v),
                          Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: _buildLawnsStack(
                              context,
                              userImage: ImageConstant.imgRectangle4268,
                              lawns: "lbl_lawns".tr,
                            ),
                          ),
                          SizedBox(height: 71.v),
                          Padding(
                            padding: EdgeInsets.only(left: 23.h),
                            child: Text(
                              "lbl_videos_32".tr,
                              style: CustomTextStyles.labelLargeBlack90001_2,
                            ),
                          ),
                          SizedBox(height: 434.v),
                          Padding(
                            padding: EdgeInsets.only(left: 17.h),
                            child: Text(
                              "msg_about_lawn_events".tr,
                              style:
                                  CustomTextStyles.titleSmallBlack90001SemiBold,
                            ),
                          ),
                          SizedBox(height: 2.v),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: 311.h,
                              margin: EdgeInsets.symmetric(horizontal: 17.h),
                              child: Text(
                                "msg_lorem_ipsum_lorem2".tr,
                                maxLines: 5,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodySmallBlack900018,
                              ),
                            ),
                          ),
                          SizedBox(height: 8.v),
                          Padding(
                            padding: EdgeInsets.only(left: 17.h),
                            child: Text(
                              "lbl_since".tr,
                              style: CustomTextStyles.labelSmallSemiBold_1,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 17.h),
                            child: Text(
                              "msg_4_years_5_months".tr,
                              style: CustomTextStyles.bodySmallBlack900018,
                            ),
                          ),
                          SizedBox(height: 8.v),
                          Padding(
                            padding: EdgeInsets.only(left: 17.h),
                            child: Text(
                              "msg_candid_photography".tr,
                              style: CustomTextStyles.labelSmallSemiBold_1,
                            ),
                          ),
                          SizedBox(height: 2.v),
                          Padding(
                            padding: EdgeInsets.only(left: 17.h),
                            child: Text(
                              "lbl_18000_per_day".tr,
                              style: CustomTextStyles.bodySmallBlack900018,
                            ),
                          ),
                          SizedBox(height: 50.v),
                          _buildReviewsColumn(context),
                          SizedBox(height: 29.v),
                          Padding(
                            padding: EdgeInsets.only(left: 14.h),
                            child: Text(
                              "msg_browse_similar_vendors".tr,
                              style:
                                  CustomTextStyles.titleSmallBlack90001SemiBold,
                            ),
                          ),
                          SizedBox(height: 10.v),
                          _buildUserProfileList(context),
                          SizedBox(height: 5.v),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.only(right: 100.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant
                                        .imgStarSymbolIconYellowA700,
                                    height: 12.adaptSize,
                                    width: 12.adaptSize,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 7.h),
                                    child: Text(
                                      "lbl_4_5_132".tr,
                                      style: CustomTextStyles.labelSmall9,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 12.v),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.only(right: 43.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 1.v),
                                    child: Text(
                                      "lbl_60_000".tr,
                                      style: theme.textTheme.titleMedium,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 4.h,
                                      top: 7.v,
                                    ),
                                    child: Text(
                                      "lbl_per_day".tr,
                                      style: CustomTextStyles
                                          .labelMediumBlack9000111,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 20.v),
                        ],
                      ),
                    ),
                  ),
                  _buildViewAllAlbumsColumn(context),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      height: 170.v,
                      width: 161.h,
                      margin: EdgeInsets.only(left: 29.h),
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle4277,
                            height: 170.v,
                            width: 161.h,
                            radius: BorderRadius.circular(
                              16.h,
                            ),
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              height: 19.adaptSize,
                              width: 19.adaptSize,
                              margin: EdgeInsets.only(
                                top: 9.v,
                                right: 8.h,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 6.h,
                                vertical: 4.v,
                              ),
                              decoration: AppDecoration.fillGray100.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder9,
                              ),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgBookmark,
                                height: 9.v,
                                width: 6.h,
                                alignment: Alignment.topCenter,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  _buildSendMessageRow(context),
                  _buildAllCitiesThirtyTwoColumn(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildArrowDownStack(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: 281.v,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle4259281x375,
              height: 281.v,
              width: 375.h,
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 24.h,
                  top: 7.v,
                  right: 11.h,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgArrowDownWhiteA700,
                      height: 24.v,
                      width: 22.h,
                    ),
                    SizedBox(height: 191.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 9.h,
                          vertical: 3.v,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.roundedBorder9,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgPicture1,
                              height: 9.adaptSize,
                              width: 9.adaptSize,
                              margin: EdgeInsets.only(
                                left: 1.h,
                                top: 1.v,
                                bottom: 1.v,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 2.h,
                                top: 1.v,
                              ),
                              child: Text(
                                "lbl_110_photos".tr,
                                style: theme.textTheme.labelSmall,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTheCineLawnsRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 17.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_the_cine_lawns".tr,
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 5.v),
              Text(
                "lbl_mumbai".tr,
                style: CustomTextStyles.labelLargeBlack90001_2,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 17.v),
            child: CustomIconButton(
              height: 28.adaptSize,
              width: 28.adaptSize,
              padding: EdgeInsets.all(7.h),
              decoration: IconButtonStyleHelper.outlineBlackTL14,
              child: CustomImageView(
                imagePath: ImageConstant.imgBookmark,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildReviewsColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 3.h),
      padding: EdgeInsets.symmetric(horizontal: 13.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "lbl_reviews_90".tr,
              style: CustomTextStyles.labelLargeBlack90001SemiBold12,
            ),
          ),
          SizedBox(height: 3.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "msg_updated_on_26_jan".tr,
              style: CustomTextStyles.bodySmallBlack900018,
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: BlocSelector<
                LawnBusinessFourTabContainerBloc,
                LawnBusinessFourTabContainerState,
                LawnBusinessFourTabContainerModel?>(
              selector: (state) => state.lawnBusinessFourTabContainerModelObj,
              builder: (context, lawnBusinessFourTabContainerModelObj) {
                return ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.5.v),
                      child: SizedBox(
                        width: 315.h,
                        child: Divider(
                          height: 1.v,
                          thickness: 1.v,
                          color: appTheme.gray10004,
                        ),
                      ),
                    );
                  },
                  itemCount: lawnBusinessFourTabContainerModelObj
                          ?.userprofile4ItemList.length ??
                      0,
                  itemBuilder: (context, index) {
                    Userprofile4ItemModel model =
                        lawnBusinessFourTabContainerModelObj
                                ?.userprofile4ItemList[index] ??
                            Userprofile4ItemModel();
                    return Userprofile4ItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 14.h,
        right: 31.h,
      ),
      child: BlocSelector<
          LawnBusinessFourTabContainerBloc,
          LawnBusinessFourTabContainerState,
          LawnBusinessFourTabContainerModel?>(
        selector: (state) => state.lawnBusinessFourTabContainerModelObj,
        builder: (context, lawnBusinessFourTabContainerModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 18.v,
              );
            },
            itemCount: lawnBusinessFourTabContainerModelObj
                    ?.userprofilelistItemList.length ??
                0,
            itemBuilder: (context, index) {
              UserprofilelistItemModel model =
                  lawnBusinessFourTabContainerModelObj
                          ?.userprofilelistItemList[index] ??
                      UserprofilelistItemModel();
              return UserprofilelistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildViewAllAlbumsColumn(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 18.h,
          top: 947.v,
          right: 18.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BlocSelector<
                LawnBusinessFourTabContainerBloc,
                LawnBusinessFourTabContainerState,
                LawnBusinessFourTabContainerModel?>(
              selector: (state) => state.lawnBusinessFourTabContainerModelObj,
              builder: (context, lawnBusinessFourTabContainerModelObj) {
                return GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 171.v,
                    crossAxisCount: 2,
                    mainAxisSpacing: 15.h,
                    crossAxisSpacing: 15.h,
                  ),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: lawnBusinessFourTabContainerModelObj
                          ?.lawnbusinessfourtabcontainerItemList.length ??
                      0,
                  itemBuilder: (context, index) {
                    LawnbusinessfourtabcontainerItemModel model =
                        lawnBusinessFourTabContainerModelObj
                                ?.lawnbusinessfourtabcontainerItemList[index] ??
                            LawnbusinessfourtabcontainerItemModel();
                    return LawnbusinessfourtabcontainerItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
            SizedBox(height: 21.v),
            CustomOutlinedButton(
              width: 107.h,
              text: "msg_view_all_albums".tr,
              buttonStyle: CustomButtonStyles.outlinePrimary,
            ),
            SizedBox(height: 161.v),
            CustomOutlinedButton(
              height: 25.v,
              width: 87.h,
              text: "lbl_read_more".tr,
              buttonStyle: CustomButtonStyles.outlinePrimary,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSendMessageRow(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(
          top: 2897.v,
          bottom: 34.v,
        ),
        padding: EdgeInsets.symmetric(vertical: 13.v),
        decoration: AppDecoration.outlineIndigo,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomOutlinedButton(
              height: 39.v,
              width: 257.h,
              text: "lbl_send_message".tr,
              margin: EdgeInsets.only(bottom: 10.v),
              buttonStyle: CustomButtonStyles.outlinePrimaryTL19,
              buttonTextStyle: CustomTextStyles.titleMediumPrimary_1,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10.v),
              child: CustomIconButton(
                height: 39.adaptSize,
                width: 39.adaptSize,
                child: CustomImageView(
                  imagePath: ImageConstant.imgPhoneCall21,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAllCitiesThirtyTwoColumn(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(bottom: 34.v),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 21.v,
              width: 357.h,
              child: TabBar(
                controller: tabviewController,
                isScrollable: true,
                labelColor: appTheme.whiteA700,
                labelStyle: TextStyle(
                  fontSize: 10.fSize,
                  fontFamily: 'Kumbh Sans',
                  fontWeight: FontWeight.w500,
                ),
                unselectedLabelColor: appTheme.gray50005,
                unselectedLabelStyle: TextStyle(
                  fontSize: 10.fSize,
                  fontFamily: 'Kumbh Sans',
                  fontWeight: FontWeight.w500,
                ),
                indicator: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    10.h,
                  ),
                ),
                tabs: [
                  Tab(
                    child: Text(
                      "lbl_all_cities_32".tr,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "lbl_hydrabad_32".tr,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "lbl_mumbai_32".tr,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "lbl_bengaluru_32".tr,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "lbl_chennai_32".tr,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "lbl_nagpur_32".tr,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2488.v,
              child: TabBarView(
                controller: tabviewController,
                children: [
                  LawnBusinessFourPage(),
                  LawnBusinessFourPage(),
                  LawnBusinessFourPage(),
                  LawnBusinessFourPage(),
                  LawnBusinessFourPage(),
                  LawnBusinessFourPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildLawnsStack(
    BuildContext context, {
    required String userImage,
    required String lawns,
  }) {
    return SizedBox(
      height: 170.v,
      width: 161.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CustomImageView(
            imagePath: userImage,
            height: 170.v,
            width: 161.h,
            radius: BorderRadius.circular(
              16.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 13.h,
                bottom: 15.v,
              ),
              child: Text(
                lawns,
                style: theme.textTheme.labelLarge!.copyWith(
                  color: appTheme.whiteA700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
