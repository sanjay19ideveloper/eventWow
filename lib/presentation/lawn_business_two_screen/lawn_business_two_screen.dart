import '../lawn_business_two_screen/widgets/subtractgrid_item_widget.dart';import '../lawn_business_two_screen/widgets/userprofile5_item_widget.dart';import 'bloc/lawn_business_two_bloc.dart';import 'models/lawn_business_two_model.dart';import 'models/subtractgrid_item_model.dart';import 'models/userprofile5_item_model.dart';import 'package:flutter/material.dart';import 'package:sanjay_s_application2/core/app_export.dart';import 'package:sanjay_s_application2/widgets/custom_icon_button.dart';class LawnBusinessTwoScreen extends StatelessWidget {const LawnBusinessTwoScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<LawnBusinessTwoBloc>(create: (context) => LawnBusinessTwoBloc(LawnBusinessTwoState(lawnBusinessTwoModelObj: LawnBusinessTwoModel()))..add(LawnBusinessTwoInitialEvent()), child: LawnBusinessTwoScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: SingleChildScrollView(child: SizedBox(height: 2970.v, width: double.maxFinite, child: Stack(alignment: Alignment.bottomCenter, children: [_buildNinetyOneStack(context), Align(alignment: Alignment.bottomCenter, child: Container(padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 27.v), decoration: BoxDecoration(borderRadius: BorderRadiusStyle.customBorderTL15), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [_buildTheCineLawnsRow(context), Padding(padding: EdgeInsets.only(left: 17.h), child: Text("lbl_mumbai".tr, style: CustomTextStyles.labelLargeBlack90001_2)), SizedBox(height: 8.v), Padding(padding: EdgeInsets.only(left: 17.h), child: Row(children: [SizedBox(height: 34.v, width: 75.h, child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.topLeft, child: Text("lbl_photo_video".tr, style: CustomTextStyles.labelSmallGray50005)), Align(alignment: Alignment.bottomCenter, child: Text("lbl_50_000".tr, style: CustomTextStyles.titleLargePrimary))])), Padding(padding: EdgeInsets.only(left: 5.h, top: 18.v, bottom: 5.v), child: Text("lbl_per_day".tr, style: theme.textTheme.labelSmall))])), Padding(padding: EdgeInsets.only(left: 17.h), child: Text("lbl_pricing_info".tr, style: CustomTextStyles.labelSmallGray50005.copyWith(decoration: TextDecoration.underline))), SizedBox(height: 14.v), Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.only(left: 36.h, right: 21.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Container(width: 44.h, margin: EdgeInsets.only(top: 3.v, bottom: 4.v), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomImageView(imagePath: ImageConstant.imgStarSymbolIcon, height: 11.adaptSize, width: 11.adaptSize), RichText(text: TextSpan(children: [TextSpan(text: "lbl_4_5".tr, style: CustomTextStyles.labelMediumBlack90001_1), TextSpan(text: " "), TextSpan(text: "lbl_90".tr, style: CustomTextStyles.kumbhSansGray50005Medium)]), textAlign: TextAlign.left)])), Spacer(flex: 25), SizedBox(height: 17.v, child: VerticalDivider(width: 1.h, thickness: 1.v, color: appTheme.gray30004)), Spacer(flex: 28), Container(width: 53.h, margin: EdgeInsets.only(top: 2.v, bottom: 3.v), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgBookmarkBlack90001, height: 13.v, width: 9.h), Padding(padding: EdgeInsets.only(left: 5.h), child: Text("lbl_shortlist".tr, style: CustomTextStyles.labelMediumBlack90001_2))])), Spacer(flex: 25), SizedBox(height: 17.v, child: VerticalDivider(width: 1.h, thickness: 1.v, color: appTheme.gray30004)), Spacer(flex: 21), CustomImageView(imagePath: ImageConstant.imgSend, height: 11.adaptSize, width: 11.adaptSize, margin: EdgeInsets.symmetric(vertical: 4.v)), Padding(padding: EdgeInsets.only(left: 3.h, top: 2.v, bottom: 3.v), child: Text("lbl_share".tr, style: CustomTextStyles.labelMediumBlack90001_2))]))), SizedBox(height: 19.v), _buildAlbumsThirtyTwoColumn(context), SizedBox(height: 66.v), _buildVideosThirtyTwoRow(context), SizedBox(height: 5.v), _buildSubtractGrid(context), SizedBox(height: 5.v)])))])))))); } 
/// Section Widget
Widget _buildNinetyOneStack(BuildContext context) { return Align(alignment: Alignment.topCenter, child: SizedBox(height: 281.v, width: double.maxFinite, child: Stack(alignment: Alignment.topCenter, children: [CustomImageView(imagePath: ImageConstant.imgRectangle4259281x375, height: 281.v, width: 375.h, alignment: Alignment.center), Align(alignment: Alignment.topCenter, child: Padding(padding: EdgeInsets.only(left: 24.h, top: 7.v, right: 11.h), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgArrowDownWhiteA700, height: 24.v, width: 22.h), SizedBox(height: 191.v), Align(alignment: Alignment.centerRight, child: Container(padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 3.v), decoration: BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder9), child: Row(mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imgPicture1, height: 9.adaptSize, width: 9.adaptSize, margin: EdgeInsets.only(left: 1.h, top: 1.v, bottom: 1.v)), Padding(padding: EdgeInsets.only(left: 2.h, top: 1.v), child: Text("lbl_110_photos".tr, style: theme.textTheme.labelSmall))])))])))]))); } 
/// Section Widget
Widget _buildTheCineLawnsRow(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 17.h), child: Row(children: [Padding(padding: EdgeInsets.only(bottom: 4.v), child: Text("lbl_the_cine_lawns".tr, style: theme.textTheme.titleLarge)), Padding(padding: EdgeInsets.only(left: 10.h), child: CustomIconButton(height: 29.adaptSize, width: 29.adaptSize, padding: EdgeInsets.all(8.h), decoration: IconButtonStyleHelper.outlineWhiteA, child: CustomImageView(imagePath: ImageConstant.imgEdit))), Spacer(), CustomIconButton(height: 28.adaptSize, width: 28.adaptSize, padding: EdgeInsets.all(7.h), decoration: IconButtonStyleHelper.outlineBlackTL14, child: CustomImageView(imagePath: ImageConstant.imgBookmark))])); } 
/// Section Widget
Widget _buildAlbumsThirtyTwoColumn(BuildContext context) { return Container(margin: EdgeInsets.only(left: 2.h), padding: EdgeInsets.symmetric(horizontal: 1.h), child: Column(children: [Padding(padding: EdgeInsets.only(left: 2.h, right: 8.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(top: 8.v), child: Text("lbl_albums_32".tr, style: CustomTextStyles.labelLargeBlack90001_2)), CustomIconButton(height: 24.adaptSize, width: 24.adaptSize, onTap: () {onTapBtnClose(context);}, child: CustomImageView(imagePath: ImageConstant.imgClosePrimary))])), SizedBox(height: 35.v), Padding(padding: EdgeInsets.only(right: 3.h), child: BlocSelector<LawnBusinessTwoBloc, LawnBusinessTwoState, LawnBusinessTwoModel?>(selector: (state) => state.lawnBusinessTwoModelObj, builder: (context, lawnBusinessTwoModelObj) {return GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 171.v, crossAxisCount: 2, mainAxisSpacing: 14.h, crossAxisSpacing: 14.h), physics: NeverScrollableScrollPhysics(), itemCount: lawnBusinessTwoModelObj?.userprofile5ItemList.length ?? 0, itemBuilder: (context, index) {Userprofile5ItemModel model = lawnBusinessTwoModelObj?.userprofile5ItemList[index] ?? Userprofile5ItemModel(); return Userprofile5ItemWidget(model);});}))])); } 
/// Section Widget
Widget _buildVideosThirtyTwoRow(BuildContext context) { return Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.only(left: 23.h, right: 10.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 4.v, bottom: 2.v), child: Text("lbl_videos_32".tr, style: CustomTextStyles.labelLargeBlack90001_2)), CustomIconButton(height: 24.adaptSize, width: 24.adaptSize, onTap: () {onTapBtnClose1(context);}, child: CustomImageView(imagePath: ImageConstant.imgClosePrimary))]))); } 
/// Section Widget
Widget _buildSubtractGrid(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 2.h, right: 3.h), child: BlocSelector<LawnBusinessTwoBloc, LawnBusinessTwoState, LawnBusinessTwoModel?>(selector: (state) => state.lawnBusinessTwoModelObj, builder: (context, lawnBusinessTwoModelObj) {return GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 171.v, crossAxisCount: 2, mainAxisSpacing: 15.h, crossAxisSpacing: 15.h), physics: NeverScrollableScrollPhysics(), itemCount: lawnBusinessTwoModelObj?.subtractgridItemList.length ?? 0, itemBuilder: (context, index) {SubtractgridItemModel model = lawnBusinessTwoModelObj?.subtractgridItemList[index] ?? SubtractgridItemModel(); return SubtractgridItemWidget(model);});})); } 
/// Navigates to the allPhotosScreen when the action is triggered.
onTapBtnClose(BuildContext context) { NavigatorService.pushNamed(AppRoutes.allPhotosScreen, ); } 
/// Navigates to the allPhotosScreen when the action is triggered.
onTapBtnClose1(BuildContext context) { NavigatorService.pushNamed(AppRoutes.allPhotosScreen, ); } 
 }
