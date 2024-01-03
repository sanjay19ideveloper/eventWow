import 'bloc/all_cities_photographer_container_bloc.dart';import 'models/all_cities_photographer_container_model.dart';import 'package:flutter/material.dart';import 'package:sanjay_s_application2/core/app_export.dart';import 'package:sanjay_s_application2/presentation/all_cities_photographer_page/all_cities_photographer_page.dart';import 'package:sanjay_s_application2/widgets/custom_bottom_bar.dart';
// ignore_for_file: must_be_immutable
class AllCitiesPhotographerContainerScreen extends StatelessWidget {AllCitiesPhotographerContainerScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

static Widget builder(BuildContext context) { return BlocProvider<AllCitiesPhotographerContainerBloc>(create: (context) => AllCitiesPhotographerContainerBloc(AllCitiesPhotographerContainerState(allCitiesPhotographerContainerModelObj: AllCitiesPhotographerContainerModel()))..add(AllCitiesPhotographerContainerInitialEvent()), child: AllCitiesPhotographerContainerScreen()); } 
@override Widget build(BuildContext context) { return BlocBuilder<AllCitiesPhotographerContainerBloc, AllCitiesPhotographerContainerState>(builder: (context, state) {return SafeArea(child: Scaffold(body: Navigator(key: navigatorKey, initialRoute: AppRoutes.allCitiesPhotographerPage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(context, routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: _buildBottomBar(context)));}); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Homepage: return AppRoutes.allCitiesPhotographerPage; case BottomBarEnum.Vendor: return "/"; case BottomBarEnum.Einvites: return "/"; case BottomBarEnum.Wishlist: return "/"; case BottomBarEnum.Checklist: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.allCitiesPhotographerPage: return AllCitiesPhotographerPage(); default: return DefaultWidget();} } 
 }
