import '../preview_card_screen/widgets/previewcard_item_widget.dart';import 'bloc/preview_card_bloc.dart';import 'models/preview_card_model.dart';import 'models/previewcard_item_model.dart';import 'package:flutter/material.dart';import 'package:sanjay_s_application2/core/app_export.dart';import 'package:sanjay_s_application2/widgets/app_bar/appbar_leading_image.dart';import 'package:sanjay_s_application2/widgets/app_bar/appbar_subtitle.dart';import 'package:sanjay_s_application2/widgets/app_bar/custom_app_bar.dart';import 'package:sanjay_s_application2/widgets/custom_icon_button.dart';import 'package:sanjay_s_application2/presentation/publish_card_bottomsheet/publish_card_bottomsheet.dart';class PreviewCardScreen extends StatelessWidget {const PreviewCardScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<PreviewCardBloc>(create: (context) => PreviewCardBloc(PreviewCardState(previewCardModelObj: PreviewCardModel()))..add(PreviewCardInitialEvent()), child: PreviewCardScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 20.v), _buildPreviewCard(context)])), bottomNavigationBar: _buildButtonColor(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 42.v, leadingWidth: 46.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 10.v, bottom: 10.v)), title: AppbarSubtitle(text: "lbl_preview_card".tr, margin: EdgeInsets.only(left: 11.h))); } 
/// Section Widget
Widget _buildPreviewCard(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h), child: BlocSelector<PreviewCardBloc, PreviewCardState, PreviewCardModel?>(selector: (state) => state.previewCardModelObj, builder: (context, previewCardModelObj) {return ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 14.v);}, itemCount: previewCardModelObj?.previewcardItemList.length ?? 0, itemBuilder: (context, index) {PreviewcardItemModel model = previewCardModelObj?.previewcardItemList[index] ?? PreviewcardItemModel(); return PreviewcardItemWidget(model);});}))); } 
/// Section Widget
Widget _buildButtonColor(BuildContext context) { return GestureDetector(onTap: () {onTapButtonColor(context);}, child: Container(height: 30.v, width: 171.h, margin: EdgeInsets.only(left: 138.h, right: 66.h, bottom: 37.v), child: Stack(alignment: Alignment.centerLeft, children: [Align(alignment: Alignment.centerRight, child: Container(height: 30.adaptSize, width: 30.adaptSize, decoration: AppDecoration.outlineIndigoF.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: CustomIconButton(height: 30.adaptSize, width: 30.adaptSize, padding: EdgeInsets.all(8.h), decoration: IconButtonStyleHelper.fillIndigoA, alignment: Alignment.center, child: CustomImageView(imagePath: ImageConstant.imgArrowLeft)))), Align(alignment: Alignment.centerLeft, child: Text("lbl_publish".tr.toUpperCase(), style: CustomTextStyles.titleMediumWhiteA700))]))); } 

/// Displays a bottom sheet widget using the [showModalBottomSheet] method 
/// of the [Scaffold] class with [isScrollControlled] set to true.
///
/// The bottom sheet is built using the [PublishCardBottomsheet]
/// class and the [builder] method of the bottom sheet is passed the
/// [BuildContext] object.
onTapButtonColor(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>PublishCardBottomsheet.builder(context),isScrollControlled: true); } 
 }
