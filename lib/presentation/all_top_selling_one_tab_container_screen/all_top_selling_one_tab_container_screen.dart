import 'bloc/all_top_selling_one_tab_container_bloc.dart';
import 'models/all_top_selling_one_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/all_cities_photographer_page/all_cities_photographer_page.dart';
import 'package:sanjay_s_application2/presentation/all_top_selling_one_page/all_top_selling_one_page.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:sanjay_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sanjay_s_application2/widgets/custom_bottom_bar.dart';

class AllTopSellingOneTabContainerScreen extends StatefulWidget {
  const AllTopSellingOneTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AllTopSellingOneTabContainerScreenState createState() =>
      AllTopSellingOneTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<AllTopSellingOneTabContainerBloc>(
      create: (context) =>
          AllTopSellingOneTabContainerBloc(AllTopSellingOneTabContainerState(
        allTopSellingOneTabContainerModelObj:
            AllTopSellingOneTabContainerModel(),
      ))
            ..add(AllTopSellingOneTabContainerInitialEvent()),
      child: AllTopSellingOneTabContainerScreen(),
    );
  }
}

class AllTopSellingOneTabContainerScreenState
    extends State<AllTopSellingOneTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllTopSellingOneTabContainerBloc,
        AllTopSellingOneTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 17.v),
                  _buildTabview(context),
                  Expanded(
                    child: SizedBox(
                      height: 591.v,
                      child: TabBarView(
                        controller: tabviewController,
                        children: [
                          AllTopSellingOnePage(),
                          AllTopSellingOnePage(),
                          AllTopSellingOnePage(),
                          AllTopSellingOnePage(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: _buildBottomBar(context),
          ),
        );
      },
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
        text: "msg_top_selling_services".tr,
        margin: EdgeInsets.only(left: 11.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 23.v,
      width: 349.h,
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        labelColor: appTheme.indigoA40001,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Kumbh Sans',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: appTheme.black90001,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Kumbh Sans',
          fontWeight: FontWeight.w400,
        ),
        indicatorColor: appTheme.indigoA40002,
        tabs: [
          Tab(
            child: Text(
              "lbl_photographer".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_decoration".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_food".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_dj_music".tr,
            ),
          ),
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
