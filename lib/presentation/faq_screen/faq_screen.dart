import 'bloc/faq_bloc.dart';
import 'models/faq_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/all_cities_photographer_page/all_cities_photographer_page.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:sanjay_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sanjay_s_application2/widgets/custom_bottom_bar.dart';
import 'package:sanjay_s_application2/widgets/custom_checkbox_button.dart';
import 'package:sanjay_s_application2/widgets/custom_floating_button.dart';
import 'package:sanjay_s_application2/widgets/custom_search_view.dart';

class FaqScreen extends StatelessWidget {
  FaqScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<FaqBloc>(
      create: (context) => FaqBloc(FaqState(
        faqModelObj: FaqModel(),
      ))
        ..add(FaqInitialEvent()),
      child: FaqScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 2.v),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 23.h,
                  vertical: 24.v,
                ),
                child: Column(
                  children: [
                    Text(
                      "msg_how_can_we_help".tr,
                      style: CustomTextStyles.titleLargePoppins,
                    ),
                    SizedBox(height: 18.v),
                    BlocSelector<FaqBloc, FaqState, TextEditingController?>(
                      selector: (state) => state.searchController,
                      builder: (context, searchController) {
                        return CustomSearchView(
                          controller: searchController,
                          hintText: "msg_enter_your_keyword".tr,
                          contentPadding: EdgeInsets.only(
                            top: 9.v,
                            right: 30.h,
                            bottom: 9.v,
                          ),
                          borderDecoration: SearchViewStyleHelper.fillGray,
                          fillColor: appTheme.gray10004,
                        );
                      },
                    ),
                    SizedBox(height: 31.v),
                    _buildTopQuestions(context),
                    SizedBox(height: 88.v),
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
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
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
        text: "lbl_faq".tr,
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
  Widget _buildTopQuestions(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "lbl_top_questions".tr,
              style: CustomTextStyles.titleSmallPoppinsBlack90001SemiBold,
            ),
            Text(
              "lbl_view_all".tr,
              style: CustomTextStyles.bodyMediumPoppinsBlue700,
            ),
          ],
        ),
        SizedBox(height: 17.v),
        Column(
          children: [
            Container(
              width: 327.h,
              padding: EdgeInsets.symmetric(
                horizontal: 8.h,
                vertical: 13.v,
              ),
              decoration: AppDecoration.outlineBluegray10003.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder5,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 5.h),
                    child: BlocSelector<FaqBloc, FaqState, bool?>(
                      selector: (state) => state.icon,
                      builder: (context, icon) {
                        return CustomCheckboxButton(
                          width: 302.h,
                          text: "msg_how_to_create_a".tr,
                          value: icon,
                          isRightCheck: true,
                          onChange: (value) {
                            context
                                .read<FaqBloc>()
                                .add(ChangeCheckBoxEvent(value: value));
                          },
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 9.v),
                  Container(
                    width: 302.h,
                    margin: EdgeInsets.only(left: 5.h),
                    child: Text(
                      "msg_open_the_tradebase".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style:
                          CustomTextStyles.bodySmallPoppinsGray60001.copyWith(
                        height: 1.59,
                      ),
                    ),
                  ),
                  SizedBox(height: 12.v),
                ],
              ),
            ),
            SizedBox(height: 14.v),
            _buildHowToAddAPayment(
              context,
              paymentText: "msg_how_to_add_a_payment".tr,
            ),
            SizedBox(height: 14.v),
            _buildHowToAddAPayment(
              context,
              paymentText: "msg_what_time_does_the".tr,
            ),
          ],
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

  /// Common widget
  Widget _buildHowToAddAPayment(
    BuildContext context, {
    required String paymentText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineBluegray10003.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              width: 234.h,
              margin: EdgeInsets.only(bottom: 4.v),
              child: Text(
                paymentText,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.labelLargePoppinsBlack90001.copyWith(
                  color: appTheme.black90001,
                  height: 1.43,
                ),
              ),
            ),
          ),
          Container(
            height: 22.adaptSize,
            width: 22.adaptSize,
            margin: EdgeInsets.only(
              left: 45.h,
              bottom: 22.v,
            ),
            decoration: AppDecoration.outlineBluegray100031,
            child: CustomImageView(
              imagePath: ImageConstant.imgPlus,
              height: 22.adaptSize,
              width: 22.adaptSize,
              alignment: Alignment.center,
            ),
          ),
        ],
      ),
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
