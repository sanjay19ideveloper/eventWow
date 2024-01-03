import '../chats_screen/widgets/userprofile11_item_widget.dart';import 'bloc/chats_bloc.dart';import 'models/chats_model.dart';import 'models/userprofile11_item_model.dart';import 'package:flutter/material.dart';import 'package:sanjay_s_application2/core/app_export.dart';import 'package:sanjay_s_application2/presentation/all_cities_photographer_page/all_cities_photographer_page.dart';import 'package:sanjay_s_application2/widgets/app_bar/appbar_leading_image.dart';import 'package:sanjay_s_application2/widgets/app_bar/appbar_subtitle.dart';import 'package:sanjay_s_application2/widgets/app_bar/custom_app_bar.dart';import 'package:sanjay_s_application2/widgets/custom_bottom_bar.dart';
// ignore_for_file: must_be_immutable
class ChatsScreen extends StatelessWidget {ChatsScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

static Widget builder(BuildContext context) { return BlocProvider<ChatsBloc>(create: (context) => ChatsBloc(ChatsState(chatsModelObj: ChatsModel()))..add(ChatsInitialEvent()), child: ChatsScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 22.v), _buildUserProfile(context)])), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 42.v, leadingWidth: 46.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 10.v, bottom: 10.v)), title: AppbarSubtitle(text: "lbl_chats".tr, margin: EdgeInsets.only(left: 11.h))); } 
/// Section Widget
Widget _buildUserProfile(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h), child: BlocSelector<ChatsBloc, ChatsState, ChatsModel?>(selector: (state) => state.chatsModelObj, builder: (context, chatsModelObj) {return ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 28.v);}, itemCount: chatsModelObj?.userprofile11ItemList.length ?? 0, itemBuilder: (context, index) {Userprofile11ItemModel model = chatsModelObj?.userprofile11ItemList[index] ?? Userprofile11ItemModel(); return Userprofile11ItemWidget(model, onTapUserProfile: () {onTapUserProfile(context);});});}))); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Homepage: return AppRoutes.allCitiesPhotographerPage; case BottomBarEnum.Vendor: return "/"; case BottomBarEnum.Einvites: return "/"; case BottomBarEnum.Wishlist: return "/"; case BottomBarEnum.Checklist: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.allCitiesPhotographerPage: return AllCitiesPhotographerPage(); default: return DefaultWidget();} } 
/// Navigates to the chatsOneScreen when the action is triggered.
onTapUserProfile(BuildContext context) { NavigatorService.pushNamed(AppRoutes.chatsOneScreen, ); } 
 }
