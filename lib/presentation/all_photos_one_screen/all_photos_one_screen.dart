import 'bloc/all_photos_one_bloc.dart';
import 'models/all_photos_one_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/widgets/custom_icon_button.dart';

class AllPhotosOneScreen extends StatelessWidget {
  const AllPhotosOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AllPhotosOneBloc>(
      create: (context) => AllPhotosOneBloc(AllPhotosOneState(
        allPhotosOneModelObj: AllPhotosOneModel(),
      ))
        ..add(AllPhotosOneInitialEvent()),
      child: AllPhotosOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllPhotosOneBloc, AllPhotosOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: SizedBox(
                  height: 769.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      _buildActionBarTitle(context),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(top: 43.v),
                          child: SizedBox(
                            width: 84.h,
                            child: Divider(
                              color: appTheme.black90001,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          height: 917.v,
                          width: 376.h,
                          child: Stack(
                            alignment: Alignment.topRight,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 917.v,
                                  width: double.maxFinite,
                                  decoration: BoxDecoration(
                                    color: appTheme.whiteA700,
                                    borderRadius: BorderRadius.circular(
                                      33.h,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: 23.v,
                                    right: 23.h,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        height: 3.v,
                                        width: 26.h,
                                        margin: EdgeInsets.only(
                                          top: 7.v,
                                          bottom: 9.v,
                                        ),
                                        decoration: BoxDecoration(
                                          color: theme
                                              .colorScheme.onPrimaryContainer,
                                          borderRadius: BorderRadius.circular(
                                            1.h,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 101.h),
                                        child: Text(
                                          "lbl_cancel".tr,
                                          style: CustomTextStyles
                                              .titleSmallPoppinsBlack9000114_1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgRectangle4279103x120,
                                height: 103.v,
                                width: 120.h,
                                alignment: Alignment.bottomCenter,
                                margin: EdgeInsets.only(bottom: 96.v),
                              ),
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgRectangle4278103x120,
                                height: 103.v,
                                width: 120.h,
                                alignment: Alignment.bottomLeft,
                                margin: EdgeInsets.only(bottom: 96.v),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 66.v),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      _buildCheckmark(context),
                                      SizedBox(height: 4.v),
                                      _buildWidget(context),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          height: 834.v,
                          width: 377.h,
                          child: Stack(
                            alignment: Alignment.topLeft,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle4287,
                                height: 103.v,
                                width: 120.h,
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(top: 80.v),
                              ),
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgRectangle4280103x120,
                                height: 103.v,
                                width: 120.h,
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(top: 80.v),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle4281,
                                height: 103.v,
                                width: 120.h,
                                alignment: Alignment.topCenter,
                                margin: EdgeInsets.only(top: 80.v),
                              ),
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgRectangle4259162x375,
                                height: 162.v,
                                width: 375.h,
                                alignment: Alignment.topCenter,
                                margin: EdgeInsets.only(top: 110.v),
                              ),
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgRectangle4260162x185,
                                height: 162.v,
                                width: 185.h,
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(
                                  left: 2.h,
                                  top: 278.v,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle4261,
                                height: 162.v,
                                width: 184.h,
                                alignment: Alignment.topRight,
                                margin: EdgeInsets.only(top: 278.v),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle4261,
                                height: 162.v,
                                width: 185.h,
                                alignment: Alignment.bottomLeft,
                                margin: EdgeInsets.only(
                                  left: 1.h,
                                  bottom: 226.v,
                                ),
                              ),
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgRectangle4260162x185,
                                height: 162.v,
                                width: 184.h,
                                alignment: Alignment.bottomRight,
                                margin: EdgeInsets.only(bottom: 226.v),
                              ),
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgRectangle4260162x185,
                                height: 162.v,
                                width: 185.h,
                                alignment: Alignment.bottomLeft,
                                margin: EdgeInsets.only(
                                  left: 1.h,
                                  bottom: 58.v,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle4265,
                                height: 162.v,
                                width: 184.h,
                                alignment: Alignment.bottomRight,
                                margin: EdgeInsets.only(bottom: 58.v),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: 58.v,
                                  width: 271.h,
                                  margin: EdgeInsets.only(bottom: 94.v),
                                  padding: EdgeInsets.all(14.h),
                                  decoration:
                                      AppDecoration.outlineIndigoF.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder16,
                                  ),
                                  child: CustomIconButton(
                                    height: 30.adaptSize,
                                    width: 30.adaptSize,
                                    padding: EdgeInsets.all(8.h),
                                    decoration:
                                        IconButtonStyleHelper.fillIndigoA,
                                    alignment: Alignment.centerRight,
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgArrowLeft,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 112.v),
                                  child: Text(
                                    "lbl_upload_4".tr.toUpperCase(),
                                    style:
                                        CustomTextStyles.titleMediumWhiteA700,
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgRectangle4267103x120,
                                height: 103.v,
                                width: 120.h,
                                alignment: Alignment.bottomRight,
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  height: 769.v,
                                  width: double.maxFinite,
                                  decoration: BoxDecoration(
                                    color:
                                        appTheme.black90001.withOpacity(0.25),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 26.h,
                                    top: 65.v,
                                  ),
                                  child: Text(
                                    "msg_the_cine_click_110".tr,
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildActionBarTitle(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.fromLTRB(24.h, 6.v, 10.h, 732.v),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgArrowDown,
              height: 22.adaptSize,
              width: 22.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 4.v),
            ),
            Padding(
              padding: EdgeInsets.only(left: 11.h),
              child: Text(
                "lbl_all_photos".tr,
                style: theme.textTheme.headlineSmall,
              ),
            ),
            Spacer(),
            SizedBox(
              height: 30.adaptSize,
              width: 30.adaptSize,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgClosePrimary,
                    height: 30.adaptSize,
                    width: 30.adaptSize,
                    alignment: Alignment.center,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgPlusIcon23,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCheckmark(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 320.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle4288,
                      height: 103.v,
                      width: 120.h,
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(right: 2.h),
                    ),
                    SizedBox(height: 113.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle4266,
                          height: 103.v,
                          width: 120.h,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle4267103x120,
                          height: 103.v,
                          width: 120.h,
                          margin: EdgeInsets.only(left: 5.h),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle4282,
                height: 103.v,
                width: 120.h,
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(right: 2.h),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 101.v,
                    right: 2.h,
                    bottom: 108.v,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 111.v,
                        width: 121.h,
                        margin: EdgeInsets.only(left: 1.h),
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 1.h),
                              child: CustomIconButton(
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                                padding: EdgeInsets.all(5.h),
                                decoration: IconButtonStyleHelper.fillPrimary,
                                alignment: Alignment.topRight,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgCheckmark,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 1.h),
                              child: CustomIconButton(
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                                padding: EdgeInsets.all(5.h),
                                decoration: IconButtonStyleHelper.fillPrimary,
                                alignment: Alignment.topRight,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgCheckmark,
                                ),
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle4283,
                              height: 103.v,
                              width: 120.h,
                              alignment: Alignment.bottomLeft,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 111.v,
                        width: 247.h,
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle4285,
                              height: 103.v,
                              width: 120.h,
                              alignment: Alignment.bottomRight,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: SizedBox(
                                height: 111.v,
                                width: 128.h,
                                child: Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgRectangle4284,
                                      height: 103.v,
                                      width: 120.h,
                                      alignment: Alignment.bottomLeft,
                                    ),
                                    CustomIconButton(
                                      height: 20.adaptSize,
                                      width: 20.adaptSize,
                                      padding: EdgeInsets.all(5.h),
                                      decoration:
                                          IconButtonStyleHelper.fillPrimary,
                                      alignment: Alignment.topRight,
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgCheckmark,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: 20.v,
                  width: 19.h,
                  margin: EdgeInsets.only(bottom: 88.v),
                  padding: EdgeInsets.symmetric(
                    horizontal: 4.h,
                    vertical: 6.v,
                  ),
                  decoration: AppDecoration.fillPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder9,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgCheckmark,
                    height: 6.v,
                    width: 10.h,
                    alignment: Alignment.bottomRight,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle4268103x120,
                height: 103.v,
                width: 120.h,
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.only(right: 1.h),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 1.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle4269,
                height: 103.v,
                width: 120.h,
                margin: EdgeInsets.only(top: 4.v),
              ),
              SizedBox(
                height: 108.v,
                width: 247.h,
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 110.h),
                      child: CustomIconButton(
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        padding: EdgeInsets.all(5.h),
                        decoration: IconButtonStyleHelper.fillPrimary,
                        alignment: Alignment.topLeft,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgCheckmark,
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle4270103x120,
                      height: 103.v,
                      width: 120.h,
                      alignment: Alignment.centerLeft,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle4271,
                      height: 103.v,
                      width: 120.h,
                      alignment: Alignment.centerRight,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 4.v),
        Padding(
          padding: EdgeInsets.only(left: 1.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: CustomImageView(
                  imagePath: ImageConstant.imgRectangle4272103x120,
                  height: 103.v,
                  width: 120.h,
                  margin: EdgeInsets.only(right: 2.h),
                ),
              ),
              Expanded(
                child: CustomImageView(
                  imagePath: ImageConstant.imgRectangle4273103x120,
                  height: 103.v,
                  width: 120.h,
                  margin: EdgeInsets.symmetric(horizontal: 2.h),
                ),
              ),
              Expanded(
                child: CustomImageView(
                  imagePath: ImageConstant.imgRectangle4274103x120,
                  height: 103.v,
                  width: 120.h,
                  margin: EdgeInsets.only(left: 2.h),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildWidget(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgRectangle4275103x120,
          height: 103.v,
          width: 120.h,
        ),
        SizedBox(
          height: 103.v,
          width: 241.h,
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle4277103x120,
                height: 103.v,
                width: 120.h,
                alignment: Alignment.centerRight,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle4289,
                height: 103.v,
                width: 120.h,
                alignment: Alignment.centerLeft,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
