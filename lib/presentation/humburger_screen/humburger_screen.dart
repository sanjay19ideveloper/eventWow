import 'bloc/humburger_bloc.dart';import 'models/humburger_model.dart';import 'package:flutter/material.dart';import 'package:sanjay_s_application2/core/app_export.dart';import 'package:sanjay_s_application2/widgets/custom_icon_button.dart';import 'package:sanjay_s_application2/presentation/share_the_app_bottomsheet/share_the_app_bottomsheet.dart';class HumburgerScreen extends StatelessWidget {const HumburgerScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<HumburgerBloc>(create: (context) => HumburgerBloc(HumburgerState(humburgerModelObj: HumburgerModel()))..add(HumburgerInitialEvent()), child: HumburgerScreen()); } 
@override Widget build(BuildContext context) { return BlocBuilder<HumburgerBloc, HumburgerState>(builder: (context, state) {return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 32.v), Expanded(child: SingleChildScrollView(child: Padding(padding: EdgeInsets.only(left: 35.h, right: 123.h, bottom: 39.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Align(alignment: Alignment.centerRight, child: Container(height: 91.adaptSize, width: 91.adaptSize, margin: EdgeInsets.only(right: 19.h), child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgRectangle4158, height: 91.adaptSize, width: 91.adaptSize, radius: BorderRadius.circular(45.h), alignment: Alignment.center), Padding(padding: EdgeInsets.only(right: 3.h, bottom: 4.v), child: CustomIconButton(height: 20.adaptSize, width: 20.adaptSize, padding: EdgeInsets.all(6.h), decoration: IconButtonStyleHelper.outlineWhiteATL10, alignment: Alignment.bottomRight, child: CustomImageView(imagePath: ImageConstant.imgThumbsUp)))]))), SizedBox(height: 18.v), Align(alignment: Alignment.centerRight, child: Text("lbl_ashfak_sayem".tr, style: CustomTextStyles.titleMediumMedium)), SizedBox(height: 31.v), Padding(padding: EdgeInsets.only(left: 1.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgLockGray60001, height: 23.adaptSize, width: 23.adaptSize), GestureDetector(onTap: () {onTapTxtMyProfile(context);}, child: Padding(padding: EdgeInsets.only(left: 27.h, top: 2.v), child: Text("lbl_my_profile".tr, style: theme.textTheme.bodyLarge)))])), SizedBox(height: 36.v), Padding(padding: EdgeInsets.only(left: 1.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgGroup18858, height: 23.adaptSize, width: 23.adaptSize), Padding(padding: EdgeInsets.only(left: 27.h, top: 3.v), child: Text("lbl_bookings".tr, style: theme.textTheme.bodyLarge))])), SizedBox(height: 34.v), Padding(padding: EdgeInsets.only(left: 1.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgGroup18859, height: 23.adaptSize, width: 23.adaptSize, onTap: () {onTapImgImage(context);}), GestureDetector(onTap: () {onTapTxtWishlist(context);}, child: Padding(padding: EdgeInsets.only(left: 27.h), child: Text("lbl_wishlist".tr, style: theme.textTheme.bodyLarge)))])), SizedBox(height: 34.v), Container(padding: EdgeInsets.symmetric(horizontal: 3.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(right: 32.h), child: Row(children: [Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgLanguage26, height: 23.adaptSize, width: 23.adaptSize), SizedBox(height: 1.v), CustomImageView(imagePath: ImageConstant.imgCustomer11, height: 1.adaptSize, width: 1.adaptSize, margin: EdgeInsets.only(left: 7.h))]), GestureDetector(onTap: () {onTapTxtListYourBusiness(context);}, child: Padding(padding: EdgeInsets.only(left: 25.h, top: 2.v), child: Text("msg_list_your_business2".tr, style: theme.textTheme.bodyLarge)))])), SizedBox(height: 2.v), CustomImageView(imagePath: ImageConstant.imgCustomer12, height: 1.adaptSize, width: 1.adaptSize, margin: EdgeInsets.only(left: 17.h))])), SizedBox(height: 32.v), Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Row(children: [SizedBox(height: 25.adaptSize, width: 25.adaptSize, child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgCustomer11, height: 1.adaptSize, width: 1.adaptSize, alignment: Alignment.bottomLeft, margin: EdgeInsets.only(left: 10.h, bottom: 2.v)), CustomImageView(imagePath: ImageConstant.imgCrown11, height: 25.adaptSize, width: 25.adaptSize, alignment: Alignment.center)])), GestureDetector(onTap: () {onTapTxtSubscription(context);}, child: Padding(padding: EdgeInsets.only(left: 26.h, top: 4.v), child: Text("lbl_subscription".tr, style: theme.textTheme.bodyLarge)))]), CustomImageView(imagePath: ImageConstant.imgCustomer12, height: 1.adaptSize, width: 1.adaptSize, margin: EdgeInsets.only(left: 20.h))]), SizedBox(height: 30.v), Padding(padding: EdgeInsets.only(left: 1.h, right: 64.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgProfile, height: 23.adaptSize, width: 23.adaptSize), GestureDetector(onTap: () {onTapTxtHelpsFAQs(context);}, child: Padding(padding: EdgeInsets.only(left: 27.h, top: 3.v), child: Text("lbl_helps_faqs".tr, style: theme.textTheme.bodyLarge)))])), SizedBox(height: 37.v), Padding(padding: EdgeInsets.only(left: 3.h, right: 58.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgSendGray60001, height: 18.v, width: 17.h, margin: EdgeInsets.only(bottom: 2.v)), GestureDetector(onTap: () {onTapTxtShareTheApp(context);}, child: Padding(padding: EdgeInsets.only(left: 30.h), child: Text("lbl_share_the_app".tr, style: theme.textTheme.bodyLarge)))])), SizedBox(height: 34.v), Padding(padding: EdgeInsets.only(left: 3.h, right: 45.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgLanguage25, height: 23.adaptSize, width: 23.adaptSize, margin: EdgeInsets.only(bottom: 1.v)), Padding(padding: EdgeInsets.only(left: 25.h, top: 4.v), child: Text("lbl_my_transactions".tr, style: theme.textTheme.bodyLarge))])), SizedBox(height: 33.v), Padding(padding: EdgeInsets.only(left: 3.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgLanguage24, height: 23.adaptSize, width: 23.adaptSize), Padding(padding: EdgeInsets.only(left: 25.h, top: 3.v), child: Text("lbl_privacy_policy".tr, style: theme.textTheme.bodyLarge))])), SizedBox(height: 36.v), Padding(padding: EdgeInsets.only(left: 3.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgLanguage23, height: 23.adaptSize, width: 23.adaptSize), Padding(padding: EdgeInsets.only(left: 25.h, bottom: 2.v), child: Text("lbl_rate_us".tr, style: theme.textTheme.bodyLarge))])), SizedBox(height: 33.v), Padding(padding: EdgeInsets.only(left: 3.h, right: 19.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgLanguage22, height: 23.adaptSize, width: 23.adaptSize), Padding(padding: EdgeInsets.only(left: 27.h, top: 2.v), child: Text("msg_terms_conditions".tr, style: theme.textTheme.bodyLarge))])), SizedBox(height: 34.v), Padding(padding: EdgeInsets.only(left: 3.h, right: 14.h), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgLanguage21, height: 23.adaptSize, width: 23.adaptSize, margin: EdgeInsets.only(bottom: 2.v)), Padding(padding: EdgeInsets.only(left: 27.h, top: 5.v), child: Text("msg_country_language".tr, style: theme.textTheme.bodyLarge))])), SizedBox(height: 34.v), Padding(padding: EdgeInsets.only(left: 3.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgLockGray6000123x23, height: 23.adaptSize, width: 23.adaptSize), GestureDetector(onTap: () {onTapTxtContactUs(context);}, child: Padding(padding: EdgeInsets.only(left: 27.h), child: Text("lbl_contact_us".tr, style: theme.textTheme.bodyLarge)))])), SizedBox(height: 24.v), Padding(padding: EdgeInsets.only(left: 3.h), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgCustomer21, height: 24.adaptSize, width: 24.adaptSize), Padding(padding: EdgeInsets.only(left: 23.h, top: 5.v), child: Text("lbl_my_services".tr, style: theme.textTheme.bodyLarge))])), SizedBox(height: 25.v), Padding(padding: EdgeInsets.only(left: 5.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgChat1, height: 26.adaptSize, width: 26.adaptSize), Padding(padding: EdgeInsets.only(left: 22.h, top: 3.v, bottom: 3.v), child: Text("lbl_chats".tr, style: theme.textTheme.bodyLarge))])), SizedBox(height: 22.v), Padding(padding: EdgeInsets.only(left: 3.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgSetting1, height: 27.adaptSize, width: 27.adaptSize), Padding(padding: EdgeInsets.only(left: 25.h, top: 6.v), child: Text("lbl_settings".tr, style: theme.textTheme.bodyLarge))])), SizedBox(height: 24.v), Padding(padding: EdgeInsets.only(left: 5.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgArrowLeftIndigoA40001, height: 23.adaptSize, width: 23.adaptSize), Padding(padding: EdgeInsets.only(left: 30.h, top: 3.v), child: Text("lbl_sign_out".tr, style: CustomTextStyles.bodyLargeIndigoA40001))]))]))))]))));}); } 
/// Navigates to the editProfileScreen when the action is triggered.
onTapTxtMyProfile(BuildContext context) { NavigatorService.pushNamed(AppRoutes.editProfileScreen, ); } 
/// Navigates to the wishlistScreen when the action is triggered.
onTapImgImage(BuildContext context) { NavigatorService.pushNamed(AppRoutes.wishlistScreen, ); } 
/// Navigates to the wishlistScreen when the action is triggered.
onTapTxtWishlist(BuildContext context) { NavigatorService.pushNamed(AppRoutes.wishlistScreen, ); } 
/// Navigates to the listYourBusinessOneScreen when the action is triggered.
onTapTxtListYourBusiness(BuildContext context) { NavigatorService.pushNamed(AppRoutes.listYourBusinessOneScreen, ); } 
/// Navigates to the subscriptionScreen when the action is triggered.
onTapTxtSubscription(BuildContext context) { NavigatorService.pushNamed(AppRoutes.subscriptionScreen, ); } 
/// Navigates to the helpFaqsScreen when the action is triggered.
onTapTxtHelpsFAQs(BuildContext context) { NavigatorService.pushNamed(AppRoutes.helpFaqsScreen, ); } 

/// Displays a bottom sheet widget using the [showModalBottomSheet] method 
/// of the [Scaffold] class with [isScrollControlled] set to true.
///
/// The bottom sheet is built using the [ShareTheAppBottomsheet]
/// class and the [builder] method of the bottom sheet is passed the
/// [BuildContext] object.
onTapTxtShareTheApp(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>ShareTheAppBottomsheet.builder(context),isScrollControlled: true); } 
/// Navigates to the contactUsScreen when the action is triggered.
onTapTxtContactUs(BuildContext context) { NavigatorService.pushNamed(AppRoutes.contactUsScreen, ); } 
 }
