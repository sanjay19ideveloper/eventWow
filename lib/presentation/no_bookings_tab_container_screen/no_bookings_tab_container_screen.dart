import 'bloc/no_bookings_tab_container_bloc.dart';
import 'models/no_bookings_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/all_cities_photographer_page/all_cities_photographer_page.dart';
import 'package:sanjay_s_application2/presentation/no_bookings_one_page/no_bookings_one_page.dart';
import 'package:sanjay_s_application2/presentation/upcoming_bookings_one_page/upcoming_bookings_one_page.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:sanjay_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sanjay_s_application2/widgets/custom_bottom_bar.dart';

class NoBookingsTabContainerScreen extends StatefulWidget {
  const NoBookingsTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  NoBookingsTabContainerScreenState createState() =>
      NoBookingsTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<NoBookingsTabContainerBloc>(
      create: (context) =>
          NoBookingsTabContainerBloc(NoBookingsTabContainerState(
        noBookingsTabContainerModelObj: NoBookingsTabContainerModel(),
      ))
            ..add(NoBookingsTabContainerInitialEvent()),
      child: NoBookingsTabContainerScreen(),
    );
  }
}

class NoBookingsTabContainerScreenState
    extends State<NoBookingsTabContainerScreen> with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoBookingsTabContainerBloc, NoBookingsTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 12.v),
                  Container(
                    height: 23.v,
                    width: 198.h,
                    child: TabBar(
                      controller: tabviewController,
                      labelPadding: EdgeInsets.zero,
                      labelColor: appTheme.indigoA40002,
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
                            "lbl_upcoming".tr,
                          ),
                        ),
                        Tab(
                          child: Text(
                            "lbl_past".tr,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 596.v,
                    child: TabBarView(
                      controller: tabviewController,
                      children: [
                        UpcomingBookingsOnePage(),
                        NoBookingsOnePage(),
                      ],
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
        text: "lbl_my_bookings".tr,
        margin: EdgeInsets.only(left: 11.h),
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
