import 'bloc/drafts_one_bloc.dart';
import 'models/drafts_one_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:sanjay_s_application2/widgets/app_bar/custom_app_bar.dart';

class DraftsOneScreen extends StatelessWidget {
  const DraftsOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<DraftsOneBloc>(
      create: (context) => DraftsOneBloc(DraftsOneState(
        draftsOneModelObj: DraftsOneModel(),
      ))
        ..add(DraftsOneInitialEvent()),
      child: DraftsOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DraftsOneBloc, DraftsOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 58.v,
              ),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgUploadRafiki15,
                    height: 331.adaptSize,
                    width: 331.adaptSize,
                  ),
                  SizedBox(height: 5.v),
                  Text(
                    "msg_you_have_no_drafts".tr,
                    style: CustomTextStyles.titleMediumErrorContainer,
                  ),
                  SizedBox(height: 16.v),
                  Opacity(
                    opacity: 0.7,
                    child: Container(
                      width: 298.h,
                      margin: EdgeInsets.only(
                        left: 19.h,
                        right: 17.h,
                      ),
                      child: Text(
                        "msg_lorem_ipsum_dolor".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style:
                            CustomTextStyles.bodyLargeErrorContainer.copyWith(
                          height: 1.75,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v),
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
        text: "lbl_drafts".tr,
        margin: EdgeInsets.only(left: 11.h),
      ),
    );
  }
}
