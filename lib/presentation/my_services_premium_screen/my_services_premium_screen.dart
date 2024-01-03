import '../my_services_premium_screen/widgets/banquetcomponent_item_widget.dart';
import 'bloc/my_services_premium_bloc.dart';
import 'models/banquetcomponent_item_model.dart';
import 'models/my_services_premium_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:sanjay_s_application2/widgets/app_bar/custom_app_bar.dart';

class MyServicesPremiumScreen extends StatelessWidget {
  const MyServicesPremiumScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<MyServicesPremiumBloc>(
      create: (context) => MyServicesPremiumBloc(MyServicesPremiumState(
        myServicesPremiumModelObj: MyServicesPremiumModel(),
      ))
        ..add(MyServicesPremiumInitialEvent()),
      child: MyServicesPremiumScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 19.v),
            child: Padding(
              padding: EdgeInsets.only(left: 29.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildBanquetComponent(context),
                  SizedBox(height: 401.v),
                  _buildFortyFive(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 49.v,
      leadingWidth: 46.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 11.v,
          bottom: 16.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "lbl_my_services".tr,
        margin: EdgeInsets.only(left: 11.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildBanquetComponent(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.h),
      child: BlocSelector<MyServicesPremiumBloc, MyServicesPremiumState,
          MyServicesPremiumModel?>(
        selector: (state) => state.myServicesPremiumModelObj,
        builder: (context, myServicesPremiumModelObj) {
          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 158.v,
              crossAxisCount: 2,
              mainAxisSpacing: 28.h,
              crossAxisSpacing: 28.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount:
                myServicesPremiumModelObj?.banquetcomponentItemList.length ?? 0,
            itemBuilder: (context, index) {
              BanquetcomponentItemModel model =
                  myServicesPremiumModelObj?.banquetcomponentItemList[index] ??
                      BanquetcomponentItemModel();
              return BanquetcomponentItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyFive(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 396.h),
        child: IntrinsicWidth(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgStarSymbolIconYellowA700,
                height: 13.adaptSize,
                width: 13.adaptSize,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgStarSymbolIconYellowA700,
                height: 13.adaptSize,
                width: 13.adaptSize,
                margin: EdgeInsets.only(left: 5.h),
              ),
              Padding(
                padding: EdgeInsets.only(left: 6.h),
                child: Text(
                  "lbl_4_5".tr,
                  style: theme.textTheme.labelMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
