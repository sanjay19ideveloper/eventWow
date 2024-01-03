import '../all_photos_screen/widgets/allphotos_item_widget.dart';
import 'bloc/all_photos_bloc.dart';
import 'models/all_photos_model.dart';
import 'models/allphotos_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';

class AllPhotosScreen extends StatelessWidget {
  const AllPhotosScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AllPhotosBloc>(
      create: (context) => AllPhotosBloc(AllPhotosState(
        allPhotosModelObj: AllPhotosModel(),
      ))
        ..add(AllPhotosInitialEvent()),
      child: AllPhotosScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
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
                      width: 374.h,
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 917.v,
                              width: 372.h,
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
                                right: 20.h,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                      color:
                                          theme.colorScheme.onPrimaryContainer,
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
                            imagePath: ImageConstant.imgRectangle4282,
                            height: 103.v,
                            width: 120.h,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(top: 66.v),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle4288,
                            height: 103.v,
                            width: 120.h,
                            alignment: Alignment.topCenter,
                            margin: EdgeInsets.only(top: 66.v),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle4279103x120,
                            height: 103.v,
                            width: 120.h,
                            alignment: Alignment.bottomCenter,
                            margin: EdgeInsets.only(bottom: 96.v),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle4278103x120,
                            height: 103.v,
                            width: 120.h,
                            alignment: Alignment.bottomLeft,
                            margin: EdgeInsets.only(bottom: 96.v),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(top: 174.v),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildRectangle2(context),
                                  SizedBox(height: 4.v),
                                  Row(
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant
                                            .imgRectangle4275103x120,
                                        height: 103.v,
                                        width: 120.h,
                                      ),
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgRectangle4289,
                                        height: 103.v,
                                        width: 120.h,
                                        margin: EdgeInsets.only(left: 11.h),
                                      ),
                                    ],
                                  ),
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
                            imagePath: ImageConstant.imgRectangle4280103x120,
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
                            imagePath: ImageConstant.imgRectangle4259162x375,
                            height: 162.v,
                            width: 375.h,
                            alignment: Alignment.topCenter,
                            margin: EdgeInsets.only(top: 110.v),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle4260162x185,
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
                            imagePath: ImageConstant.imgRectangle4268103x120,
                            height: 103.v,
                            width: 120.h,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(
                              top: 297.v,
                              right: 1.h,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle4271,
                            height: 103.v,
                            width: 120.h,
                            alignment: Alignment.bottomRight,
                            margin: EdgeInsets.only(
                              right: 1.h,
                              bottom: 325.v,
                            ),
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
                            imagePath: ImageConstant.imgRectangle4260162x185,
                            height: 162.v,
                            width: 184.h,
                            alignment: Alignment.bottomRight,
                            margin: EdgeInsets.only(bottom: 226.v),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle4274103x120,
                            height: 103.v,
                            width: 120.h,
                            alignment: Alignment.bottomRight,
                            margin: EdgeInsets.only(
                              right: 1.h,
                              bottom: 216.v,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle4260162x185,
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
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle4277103x120,
                            height: 103.v,
                            width: 120.h,
                            alignment: Alignment.bottomRight,
                            margin: EdgeInsets.only(
                              right: 1.h,
                              bottom: 108.v,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle4267103x120,
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
                                color: appTheme.black90001.withOpacity(0.25),
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
  Widget _buildRectangle2(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 1.h),
          child: BlocSelector<AllPhotosBloc, AllPhotosState, AllPhotosModel?>(
            selector: (state) => state.allPhotosModelObj,
            builder: (context, allPhotosModelObj) {
              return GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 104.v,
                  crossAxisCount: 3,
                  mainAxisSpacing: 5.h,
                  crossAxisSpacing: 5.h,
                ),
                physics: NeverScrollableScrollPhysics(),
                itemCount: allPhotosModelObj?.allphotosItemList.length ?? 0,
                itemBuilder: (context, index) {
                  AllphotosItemModel model =
                      allPhotosModelObj?.allphotosItemList[index] ??
                          AllphotosItemModel();
                  return AllphotosItemWidget(
                    model,
                  );
                },
              );
            },
          ),
        ),
        SizedBox(height: 4.v),
        Padding(
          padding: EdgeInsets.only(left: 1.h),
          child: _buildRectangle(
            context,
            image1: ImageConstant.imgRectangle4269,
            image2: ImageConstant.imgRectangle4270103x120,
          ),
        ),
        SizedBox(height: 4.v),
        Padding(
          padding: EdgeInsets.only(left: 1.h),
          child: _buildRectangle(
            context,
            image1: ImageConstant.imgRectangle4272103x120,
            image2: ImageConstant.imgRectangle4273103x120,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildRectangle(
    BuildContext context, {
    required String image1,
    required String image2,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: image1,
          height: 103.v,
          width: 120.h,
        ),
        CustomImageView(
          imagePath: image2,
          height: 103.v,
          width: 120.h,
          margin: EdgeInsets.only(left: 5.h),
        ),
      ],
    );
  }
}
