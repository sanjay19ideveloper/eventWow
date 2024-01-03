import 'bloc/edit_page_five_tab_container_bloc.dart';
import 'models/edit_page_five_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/all_cities_photographer_page/all_cities_photographer_page.dart';
import 'package:sanjay_s_application2/presentation/edit_page_five_page/edit_page_five_page.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:sanjay_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sanjay_s_application2/widgets/custom_bottom_bar.dart';

class EditPageFiveTabContainerScreen extends StatefulWidget {
  const EditPageFiveTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  EditPageFiveTabContainerScreenState createState() =>
      EditPageFiveTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<EditPageFiveTabContainerBloc>(
      create: (context) =>
          EditPageFiveTabContainerBloc(EditPageFiveTabContainerState(
        editPageFiveTabContainerModelObj: EditPageFiveTabContainerModel(),
      ))
            ..add(EditPageFiveTabContainerInitialEvent()),
      child: EditPageFiveTabContainerScreen(),
    );
  }
}

class EditPageFiveTabContainerScreenState
    extends State<EditPageFiveTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditPageFiveTabContainerBloc,
        EditPageFiveTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20.v),
                  _buildTabview(context),
                  SizedBox(
                    height: 590.v,
                    child: TabBarView(
                      controller: tabviewController,
                      children: [
                        EditPageFivePage(),
                        EditPageFivePage(),
                        EditPageFivePage(),
                        EditPageFivePage(),
                        EditPageFivePage(),
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
        text: "lbl_loving_paradise2".tr,
        margin: EdgeInsets.only(left: 11.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 21.v,
      width: 373.h,
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
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
              "lbl_page_1".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_page_2".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_page_3".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_page_4".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_page_5".tr,
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
