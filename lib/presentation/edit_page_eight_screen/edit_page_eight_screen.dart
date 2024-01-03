import 'bloc/edit_page_eight_bloc.dart';import 'models/edit_page_eight_model.dart';import 'package:flutter/material.dart';import 'package:sanjay_s_application2/core/app_export.dart';import 'package:sanjay_s_application2/presentation/all_cities_photographer_page/all_cities_photographer_page.dart';import 'package:sanjay_s_application2/widgets/app_bar/appbar_leading_image.dart';import 'package:sanjay_s_application2/widgets/app_bar/appbar_subtitle.dart';import 'package:sanjay_s_application2/widgets/app_bar/appbar_trailing_image.dart';import 'package:sanjay_s_application2/widgets/app_bar/custom_app_bar.dart';import 'package:sanjay_s_application2/widgets/custom_bottom_bar.dart';import 'package:sanjay_s_application2/widgets/custom_elevated_button.dart';import 'package:sanjay_s_application2/widgets/custom_outlined_button.dart';import 'package:sanjay_s_application2/presentation/share_the_card_two_bottomsheet/share_the_card_two_bottomsheet.dart';import 'package:sanjay_s_application2/presentation/share_the_card_bottomsheet/share_the_card_bottomsheet.dart';import 'package:sanjay_s_application2/presentation/buy_card_bottomsheet/buy_card_bottomsheet.dart';
// ignore_for_file: must_be_immutable
class EditPageEightScreen extends StatelessWidget {EditPageEightScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

static Widget builder(BuildContext context) { return BlocProvider<EditPageEightBloc>(create: (context) => EditPageEightBloc(EditPageEightState(editPageEightModelObj: EditPageEightModel()))..add(EditPageEightInitialEvent()), child: EditPageEightScreen()); } 
@override Widget build(BuildContext context) { return BlocBuilder<EditPageEightBloc, EditPageEightState>(builder: (context, state) {return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 19.v), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgRectangle42581, height: 499.v, width: 339.h, radius: BorderRadius.circular(16.h)), SizedBox(height: 27.v), _buildEditPageEightRSVP(context), SizedBox(height: 5.v)])), bottomNavigationBar: _buildBottomBar(context)));}); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 46.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 10.v, bottom: 16.v)), title: AppbarSubtitle(text: "msg_share_wedding_card".tr, margin: EdgeInsets.only(left: 11.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgSendGray60001, margin: EdgeInsets.fromLTRB(17.h, 12.v, 17.h, 18.v))]); } 
/// Section Widget
Widget _buildEditPageEightRSVP(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 6.h, right: 5.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomOutlinedButton(height: 39.v, width: 94.h, text: "lbl_rsvp".tr.toUpperCase(), buttonStyle: CustomButtonStyles.outlinePrimaryTL7, buttonTextStyle: CustomTextStyles.labelMediumPrimary, onPressed: () {onTapRSVP(context);}), CustomOutlinedButton(height: 39.v, width: 94.h, text: "lbl_messages".tr.toUpperCase(), buttonStyle: CustomButtonStyles.outlinePrimaryTL7, buttonTextStyle: CustomTextStyles.labelMediumPrimary, onPressed: () {onTapMessages(context);}), CustomElevatedButton(height: 39.v, width: 127.h, text: "msg_download_card_for".tr.toUpperCase(), buttonStyle: CustomButtonStyles.outlineIndigoFTL7, buttonTextStyle: CustomTextStyles.labelMedium_1, onPressed: () {onTapDownloadCardForRs299Only(context);})])); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Homepage: return AppRoutes.allCitiesPhotographerPage; case BottomBarEnum.Vendor: return "/"; case BottomBarEnum.Einvites: return "/"; case BottomBarEnum.Wishlist: return "/"; case BottomBarEnum.Checklist: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.allCitiesPhotographerPage: return AllCitiesPhotographerPage(); default: return DefaultWidget();} } 

/// Displays a bottom sheet widget using the [showModalBottomSheet] method 
/// of the [Scaffold] class with [isScrollControlled] set to true.
///
/// The bottom sheet is built using the [ShareTheCardTwoBottomsheet]
/// class and the [builder] method of the bottom sheet is passed the
/// [BuildContext] object.
onTapRSVP(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>ShareTheCardTwoBottomsheet.builder(context),isScrollControlled: true); } 

/// Displays a bottom sheet widget using the [showModalBottomSheet] method 
/// of the [Scaffold] class with [isScrollControlled] set to true.
///
/// The bottom sheet is built using the [ShareTheCardBottomsheet]
/// class and the [builder] method of the bottom sheet is passed the
/// [BuildContext] object.
onTapMessages(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>ShareTheCardBottomsheet.builder(context),isScrollControlled: true); } 

/// Displays a bottom sheet widget using the [showModalBottomSheet] method 
/// of the [Scaffold] class with [isScrollControlled] set to true.
///
/// The bottom sheet is built using the [BuyCardBottomsheet]
/// class and the [builder] method of the bottom sheet is passed the
/// [BuildContext] object.
onTapDownloadCardForRs299Only(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>BuyCardBottomsheet.builder(context),isScrollControlled: true); } 
 }
