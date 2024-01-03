import 'bloc/ratings_bloc.dart';
import 'models/ratings_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:sanjay_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sanjay_s_application2/widgets/custom_rating_bar.dart';

class RatingsScreen extends StatelessWidget {
  const RatingsScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<RatingsBloc>(
      create: (context) => RatingsBloc(RatingsState(
        ratingsModelObj: RatingsModel(),
      ))
        ..add(RatingsInitialEvent()),
      child: RatingsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RatingsBloc, RatingsState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              width: 326.h,
              margin: EdgeInsets.fromLTRB(29.h, 36.v, 20.h, 5.v),
              padding: EdgeInsets.symmetric(
                horizontal: 27.h,
                vertical: 26.v,
              ),
              decoration: AppDecoration.outlineBlack.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder9,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "lbl_overall_ratings".tr,
                    style: CustomTextStyles.titleSmallLeagueSpartanBlack90001,
                  ),
                  SizedBox(height: 29.v),
                  Text(
                    "lbl_4_3".tr,
                    style: CustomTextStyles.displayMediumLeagueSpartan,
                  ),
                  SizedBox(height: 1.v),
                  CustomRatingBar(
                    initialRating: 0,
                    itemSize: 27,
                  ),
                  SizedBox(height: 12.v),
                  Text(
                    "msg_14777_people_gave".tr,
                    style: CustomTextStyles
                        .bodyMediumLeagueSpartanSecondaryContainer,
                  ),
                  SizedBox(height: 26.v),
                  Padding(
                    padding: EdgeInsets.only(right: 7.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 2.v),
                          child: Text(
                            "lbl_75".tr,
                            style: CustomTextStyles
                                .titleSmallLeagueSpartanGray70001,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 6.h,
                            top: 1.v,
                          ),
                          child: Container(
                            height: 16.v,
                            width: 181.h,
                            decoration: BoxDecoration(
                              color: appTheme.gray10001,
                              borderRadius: BorderRadius.circular(
                                8.h,
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                8.h,
                              ),
                              child: LinearProgressIndicator(
                                value: 0.76,
                                backgroundColor: appTheme.gray10001,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  theme.colorScheme.primary,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.h,
                            bottom: 4.v,
                          ),
                          child: Text(
                            "lbl_5_stars".tr,
                            style: CustomTextStyles
                                .bodyMediumLeagueSpartanGray70001,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 14.v),
                  Padding(
                    padding: EdgeInsets.only(right: 7.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 2.v),
                          child: Text(
                            "lbl_16".tr,
                            style: CustomTextStyles
                                .titleSmallLeagueSpartanGray70001,
                          ),
                        ),
                        Container(
                          height: 16.v,
                          width: 181.h,
                          decoration: BoxDecoration(
                            color: appTheme.gray10001,
                            borderRadius: BorderRadius.circular(
                              8.h,
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              8.h,
                            ),
                            child: LinearProgressIndicator(
                              value: 0.5,
                              backgroundColor: appTheme.gray10001,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                theme.colorScheme.primary,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 2.v),
                          child: Text(
                            "lbl_4_stars".tr,
                            style: CustomTextStyles
                                .bodyMediumLeagueSpartanGray70001,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.v),
                  Padding(
                    padding: EdgeInsets.only(right: 7.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 2.v,
                            bottom: 1.v,
                          ),
                          child: Text(
                            "lbl_52".tr,
                            style: CustomTextStyles
                                .titleSmallLeagueSpartanGray70001,
                          ),
                        ),
                        Container(
                          height: 16.v,
                          width: 181.h,
                          decoration: BoxDecoration(
                            color: appTheme.gray10001,
                            borderRadius: BorderRadius.circular(
                              8.h,
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              8.h,
                            ),
                            child: LinearProgressIndicator(
                              value: 0.14,
                              backgroundColor: appTheme.gray10001,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                theme.colorScheme.primary,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 3.v),
                          child: Text(
                            "lbl_3_stars".tr,
                            style: CustomTextStyles
                                .bodyMediumLeagueSpartanGray70001,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.v),
                  Padding(
                    padding: EdgeInsets.only(right: 7.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Text(
                            "lbl_12".tr,
                            style: CustomTextStyles
                                .titleSmallLeagueSpartanGray70001,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 17.h),
                          child: Container(
                            height: 16.v,
                            width: 181.h,
                            decoration: BoxDecoration(
                              color: appTheme.gray10001,
                              borderRadius: BorderRadius.circular(
                                8.h,
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                8.h,
                              ),
                              child: LinearProgressIndicator(
                                value: 0.03,
                                backgroundColor: appTheme.gray10001,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  theme.colorScheme.primary,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 7.h,
                            bottom: 1.v,
                          ),
                          child: Text(
                            "lbl_2_stars".tr,
                            style: CustomTextStyles
                                .bodyMediumLeagueSpartanGray70001,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 14.v),
                  Padding(
                    padding: EdgeInsets.only(right: 7.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 3.v),
                          child: Text(
                            "lbl_32".tr,
                            style: CustomTextStyles
                                .titleSmallLeagueSpartanGray70001,
                          ),
                        ),
                        Container(
                          height: 16.v,
                          width: 181.h,
                          decoration: BoxDecoration(
                            color: appTheme.gray10001,
                            borderRadius: BorderRadius.circular(
                              8.h,
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              8.h,
                            ),
                            child: LinearProgressIndicator(
                              value: 0.07,
                              backgroundColor: appTheme.gray10001,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                theme.colorScheme.primary,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 1.v),
                          child: Text(
                            "lbl_1_star".tr,
                            style: CustomTextStyles
                                .bodyMediumLeagueSpartanGray70001,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 7.v),
                ],
              ),
            ),
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
        text: "lbl_ratings".tr,
        margin: EdgeInsets.only(left: 11.h),
      ),
    );
  }
}
