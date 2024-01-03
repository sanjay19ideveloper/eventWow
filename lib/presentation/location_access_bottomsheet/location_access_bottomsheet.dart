import '../location_access_bottomsheet/widgets/locationinfo_item_widget.dart';
import 'bloc/location_access_bloc.dart';
import 'models/location_access_model.dart';
import 'models/locationinfo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class LocationAccessBottomsheet extends StatelessWidget {
  const LocationAccessBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<LocationAccessBloc>(
      create: (context) => LocationAccessBloc(LocationAccessState(
        locationAccessModelObj: LocationAccessModel(),
      ))
        ..add(LocationAccessInitialEvent()),
      child: LocationAccessBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 15.h,
          vertical: 5.v,
        ),
        decoration: AppDecoration.fillWhiteA.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder29,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 6.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 3.v,
                width: 26.h,
                margin: EdgeInsets.only(left: 152.h),
                decoration: BoxDecoration(
                  color: theme.colorScheme.onPrimaryContainer,
                  borderRadius: BorderRadius.circular(
                    1.h,
                  ),
                ),
              ),
            ),
            SizedBox(height: 40.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 90.h),
                child: Text(
                  "lbl_select_address".tr,
                  style: CustomTextStyles.titleLarge21,
                ),
              ),
            ),
            SizedBox(height: 35.v),
            Padding(
              padding: EdgeInsets.only(
                left: 5.h,
                right: 7.h,
              ),
              child: BlocSelector<LocationAccessBloc, LocationAccessState,
                  TextEditingController?>(
                selector: (state) => state.searchController,
                builder: (context, searchController) {
                  return CustomSearchView(
                    controller: searchController,
                    hintText: "lbl_search".tr,
                    contentPadding: EdgeInsets.only(
                      left: 15.h,
                      top: 13.v,
                      bottom: 13.v,
                    ),
                    borderDecoration: SearchViewStyleHelper.outlineGray,
                    filled: false,
                  );
                },
              ),
            ),
            SizedBox(height: 47.v),
            Divider(
              color: appTheme.blueGray10003,
            ),
            SizedBox(height: 22.v),
            _buildLocationInfo(context),
            SizedBox(height: 105.v),
            _buildBellRow(context),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLocationInfo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      child: BlocSelector<LocationAccessBloc, LocationAccessState,
          LocationAccessModel?>(
        selector: (state) => state.locationAccessModelObj,
        builder: (context, locationAccessModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 23.v,
              );
            },
            itemCount: locationAccessModelObj?.locationinfoItemList.length ?? 0,
            itemBuilder: (context, index) {
              LocationinfoItemModel model =
                  locationAccessModelObj?.locationinfoItemList[index] ??
                      LocationinfoItemModel();
              return LocationinfoItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBellRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgBell68,
            height: 23.adaptSize,
            width: 23.adaptSize,
            margin: EdgeInsets.only(top: 7.v),
          ),
          Spacer(
            flex: 17,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 16.v),
            child: Text(
              "lbl_elenora_hotel".tr,
              style: CustomTextStyles.labelLargePoppinsBlack90001SemiBold_1,
            ),
          ),
          Spacer(
            flex: 82,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 11.v,
              bottom: 5.v,
            ),
            child: Text(
              "lbl_2_9_km".tr,
              style: CustomTextStyles.labelLargePoppinsBlack90001SemiBold_1,
            ),
          ),
        ],
      ),
    );
  }
}
