import '../filteres_screen/widgets/userprofile1_item_widget.dart';
import 'bloc/filteres_bloc.dart';
import 'models/filteres_model.dart';
import 'models/userprofile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:sanjay_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sanjay_s_application2/widgets/custom_icon_button.dart';

class FilteresScreen extends StatelessWidget {
  const FilteresScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FilteresBloc>(
      create: (context) => FilteresBloc(FilteresState(
        filteresModelObj: FilteresModel(),
      ))
        ..add(FilteresInitialEvent()),
      child: FilteresScreen(),
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
                  _buildFilters(context),
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
    return BlocSelector<FilteresBloc, FilteresState, FilteresModel?>(
      selector: (state) => state.filteresModelObj,
      builder: (context, filteresModelObj) {
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
          itemCount: filteresModelObj?.userprofile1ItemList.length ?? 0,
          itemBuilder: (context, index) {
            Userprofile1ItemModel model =
                filteresModelObj?.userprofile1ItemList[index] ??
                    Userprofile1ItemModel();
            return Userprofile1ItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFilters(BuildContext context) {
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
