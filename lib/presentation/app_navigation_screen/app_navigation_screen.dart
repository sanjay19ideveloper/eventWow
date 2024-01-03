import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "Logo".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.logoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "No bookings - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.noBookingsTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Lawn Business Five - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.lawnBusinessFiveTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Sub Category".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.subCategoryScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Filters".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.filtersScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "All cities - photographer - Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .allCitiesPhotographerContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Filteres".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.filteresScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Video".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.videoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Add adresss".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.addAdresssScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile Saved".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileSavedScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Reviews".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.reviewsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "About Photography".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.aboutPhotographyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Subscription".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.subscriptionScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "List your business One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.listYourBusinessOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "List your business".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.listYourBusinessScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Lawn Business Four - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.lawnBusinessFourTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Lawn Business Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.lawnBusinessTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "All Photos".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.allPhotosScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "All Photos One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.allPhotosOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Onboarding Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onboardingTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Sign in".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.signInScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Sign up".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.signUpScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Verification".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.verificationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Notifications One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.notificationsOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Notifications".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.notificationsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Humburger".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.humburgerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Edit Profile".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.editProfileScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Help & FAQs".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.helpFaqsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Contact Us".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.contactUsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Homepage".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.homepageScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile Saved One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileSavedOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "All Top Selling One - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.allTopSellingOneTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "All Top Selling".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.allTopSellingScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "All categories".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.allCategoriesScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Wishlist".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.wishlistScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Settings".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.settingsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Chats".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.chatsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Ratings".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.ratingsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Chats One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.chatsOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Share your views".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.shareYourViewsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "App Settings".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.appSettingsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Permissions".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.permissionsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile Settings".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileSettingsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Notification Settings".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.notificationSettingsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "No Chats".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.noChatsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Wishlist One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.wishlistOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Submiited".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.submiitedScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Invites".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.invitesScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Drafts".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.draftsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Drafts One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.draftsOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Invites - Wedding Cards - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .invitesWeddingCardsTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Edit page Four - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.editPageFourTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Edit page Five - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.editPageFiveTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Preview Card".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.previewCardScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Published".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.publishedScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Edit page Eight".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.editPageEightScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "My Checklist".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.myChecklistScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Privacy Policy".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.privacyPolicyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Terms & Conditions".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.termsConditionsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Transactions".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.transactionsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Language".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.languageScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Rate us".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.rateUsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Vendor Map location".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.vendorMapLocationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Vendor Profile".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.vendorProfileScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "service detail screen".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.serviceDetailScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "All Photos Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.allPhotosTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "My Services-  Premium".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.myServicesPremiumScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Add My Checklist".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.addMyChecklistScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Search".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.searchScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Check in popup".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.checkInPopupScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Privacy Policy One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.privacyPolicyOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "FAQ".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.faqScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Terms & Conditions One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.termsConditionsOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Settings One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.settingsOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Contact Us One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.contactUsOneScreen),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
