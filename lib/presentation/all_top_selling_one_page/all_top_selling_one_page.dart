import '../all_top_selling_one_page/widgets/userprofilegrid_item_widget.dart';
import 'bloc/all_top_selling_one_bloc.dart';
import 'models/all_top_selling_one_model.dart';
import 'models/userprofilegrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AllTopSellingOnePage extends StatefulWidget {
  const AllTopSellingOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  AllTopSellingOnePageState createState() => AllTopSellingOnePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<AllTopSellingOneBloc>(
      create: (context) => AllTopSellingOneBloc(AllTopSellingOneState(
        allTopSellingOneModelObj: AllTopSellingOneModel(),
      ))
        ..add(AllTopSellingOneInitialEvent()),
      child: AllTopSellingOnePage(),
    );
  }
}

class AllTopSellingOnePageState extends State<AllTopSellingOnePage>
    with AutomaticKeepAliveClientMixin<AllTopSellingOnePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 13.v),
                Container(
                  height: 714.v,
                  width: 337.h,
                  margin: EdgeInsets.symmetric(horizontal: 19.h),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 13.h,
                            bottom: 47.v,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant
                                        .imgStarSymbolIconYellowA700,
                                    height: 14.adaptSize,
                                    width: 14.adaptSize,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant
                                        .imgStarSymbolIconYellowA700,
                                    height: 14.adaptSize,
                                    width: 14.adaptSize,
                                    margin: EdgeInsets.only(left: 7.h),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant
                                        .imgStarSymbolIconYellowA700,
                                    height: 14.adaptSize,
                                    width: 14.adaptSize,
                                    margin: EdgeInsets.only(left: 6.h),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant
                                        .imgStarSymbolIconYellowA700,
                                    height: 14.adaptSize,
                                    width: 14.adaptSize,
                                    margin: EdgeInsets.only(left: 7.h),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant
                                        .imgStarSymbolIconYellowA700,
                                    height: 14.adaptSize,
                                    width: 14.adaptSize,
                                    margin: EdgeInsets.only(left: 6.h),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 7.h),
                                    child: Text(
                                      "lbl_4_5".tr,
                                      style: theme.textTheme.labelMedium,
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant
                                        .imgStarSymbolIconYellowA700,
                                    height: 14.adaptSize,
                                    width: 14.adaptSize,
                                    margin: EdgeInsets.only(left: 52.h),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant
                                        .imgStarSymbolIconYellowA700,
                                    height: 14.adaptSize,
                                    width: 14.adaptSize,
                                    margin: EdgeInsets.only(left: 7.h),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant
                                        .imgStarSymbolIconYellowA700,
                                    height: 14.adaptSize,
                                    width: 14.adaptSize,
                                    margin: EdgeInsets.only(left: 6.h),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant
                                        .imgStarSymbolIconYellowA700,
                                    height: 14.adaptSize,
                                    width: 14.adaptSize,
                                    margin: EdgeInsets.only(left: 7.h),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant
                                        .imgStarSymbolIconYellowA700,
                                    height: 14.adaptSize,
                                    width: 14.adaptSize,
                                    margin: EdgeInsets.only(left: 6.h),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 7.h),
                                    child: Text(
                                      "lbl_4_5".tr,
                                      style: theme.textTheme.labelMedium,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 11.v),
                              Padding(
                                padding: EdgeInsets.only(right: 54.h),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 1.v),
                                      child: Text(
                                        "lbl_photographer".tr,
                                        style: theme.textTheme.labelLarge,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 89.h),
                                      child: Text(
                                        "lbl_decoration".tr,
                                        style: theme.textTheme.labelLarge,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      _buildUserProfileGrid(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileGrid(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: BlocSelector<AllTopSellingOneBloc, AllTopSellingOneState,
          AllTopSellingOneModel?>(
        selector: (state) => state.allTopSellingOneModelObj,
        builder: (context, allTopSellingOneModelObj) {
          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 171.v,
              crossAxisCount: 2,
              mainAxisSpacing: 13.h,
              crossAxisSpacing: 13.h,
            ),
            physics: BouncingScrollPhysics(),
            itemCount:
                allTopSellingOneModelObj?.userprofilegridItemList.length ?? 0,
            itemBuilder: (context, index) {
              UserprofilegridItemModel model =
                  allTopSellingOneModelObj?.userprofilegridItemList[index] ??
                      UserprofilegridItemModel();
              return UserprofilegridItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
