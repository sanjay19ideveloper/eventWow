import 'bloc/invites_wedding_cards_tab_container_bloc.dart';
import 'models/invites_wedding_cards_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/all_cities_photographer_page/all_cities_photographer_page.dart';
import 'package:sanjay_s_application2/presentation/invites_video_invites_one_page/invites_video_invites_one_page.dart';
import 'package:sanjay_s_application2/presentation/invites_video_invites_page/invites_video_invites_page.dart';
import 'package:sanjay_s_application2/presentation/sort_by_trending_page/sort_by_trending_page.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:sanjay_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sanjay_s_application2/widgets/custom_bottom_bar.dart';

class InvitesWeddingCardsTabContainerScreen extends StatefulWidget {
  const InvitesWeddingCardsTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  InvitesWeddingCardsTabContainerScreenState createState() =>
      InvitesWeddingCardsTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<InvitesWeddingCardsTabContainerBloc>(
      create: (context) => InvitesWeddingCardsTabContainerBloc(
          InvitesWeddingCardsTabContainerState(
        invitesWeddingCardsTabContainerModelObj:
            InvitesWeddingCardsTabContainerModel(),
      ))
        ..add(InvitesWeddingCardsTabContainerInitialEvent()),
      child: InvitesWeddingCardsTabContainerScreen(),
    );
  }
}

class InvitesWeddingCardsTabContainerScreenState
    extends State<InvitesWeddingCardsTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InvitesWeddingCardsTabContainerBloc,
        InvitesWeddingCardsTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 24.v),
                  _buildTabview(context),
                  Expanded(
                    child: SizedBox(
                      height: 590.v,
                      child: TabBarView(
                        controller: tabviewController,
                        children: [
                          SortByTrendingPage(),
                          InvitesVideoInvitesPage(),
                          InvitesVideoInvitesOnePage(),
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
      height: 42.v,
      leadingWidth: 46.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 10.v,
          bottom: 10.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "lbl_invites".tr,
        margin: EdgeInsets.only(left: 11.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgInvitation12,
          margin: EdgeInsets.symmetric(
            horizontal: 18.h,
            vertical: 12.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 23.v,
      width: 351.h,
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
              "lbl_wedding_cards".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_video_invites".tr,
            ),
          ),
          Tab(
            child: Text(
              "msg_save_the_date_cards".tr,
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
