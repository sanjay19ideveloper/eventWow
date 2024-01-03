import '../all_cities_photographer_page/widgets/userprofile_item_widget.dart';
import 'bloc/all_cities_photographer_bloc.dart';
import 'models/all_cities_photographer_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:sanjay_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sanjay_s_application2/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class AllCitiesPhotographerPage extends StatelessWidget {
  const AllCitiesPhotographerPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AllCitiesPhotographerBloc>(
      create: (context) => AllCitiesPhotographerBloc(AllCitiesPhotographerState(
        allCitiesPhotographerModelObj: AllCitiesPhotographerModel(),
      ))
        ..add(AllCitiesPhotographerInitialEvent()),
      child: AllCitiesPhotographerPage(),
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
            padding: EdgeInsets.only(top: 10.v),
            child: Padding(
              padding: EdgeInsets.only(
                left: 21.h,
                right: 18.h,
              ),
              child: Column(
                children: [
                  _buildUserProfile(context),
                  SizedBox(height: 12.v),
                  _buildEightyFive(context),
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
      height: 46.v,
      leadingWidth: 46.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 9.v,
          bottom: 15.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "msg_all_cities_photographer".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return BlocSelector<AllCitiesPhotographerBloc, AllCitiesPhotographerState,
        AllCitiesPhotographerModel?>(
      selector: (state) => state.allCitiesPhotographerModelObj,
      builder: (context, allCitiesPhotographerModelObj) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 18.v,
            );
          },
          itemCount:
              allCitiesPhotographerModelObj?.userprofileItemList.length ?? 0,
          itemBuilder: (context, index) {
            UserprofileItemModel model =
                allCitiesPhotographerModelObj?.userprofileItemList[index] ??
                    UserprofileItemModel();
            return UserprofileItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEightyFive(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 11.h),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder9,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 172.v,
            width: 314.h,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle4259,
                  height: 172.v,
                  width: 314.h,
                  radius: BorderRadius.circular(
                    10.h,
                  ),
                  alignment: Alignment.center,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 9.v,
                    right: 7.h,
                  ),
                  child: CustomIconButton(
                    height: 23.adaptSize,
                    width: 23.adaptSize,
                    padding: EdgeInsets.all(5.h),
                    decoration: IconButtonStyleHelper.outlineBlack,
                    alignment: Alignment.topRight,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgBookmark,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.only(
              left: 22.h,
              right: 18.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_the_cine_click".tr,
                  style: CustomTextStyles.labelLargeBlack90001SemiBold_1,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 4.v,
                    bottom: 5.v,
                  ),
                  child: Text(
                    "msg_mumbai_maharashta".tr,
                    style: CustomTextStyles.kumbhSansBlack90001Medium,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 4.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 22.h),
              child: Row(
                children: [
                  Text(
                    "lbl_50_000".tr,
                    style: CustomTextStyles.titleSmallPrimary,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.h,
                      top: 5.v,
                      bottom: 5.v,
                    ),
                    child: Text(
                      "lbl_per_day".tr,
                      style: CustomTextStyles.kumbhSansBlack90001Medium,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 7.v),
        ],
      ),
    );
  }
}
