import 'bloc/no_chats_bloc.dart';
import 'models/no_chats_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:sanjay_s_application2/widgets/app_bar/custom_app_bar.dart';

class NoChatsScreen extends StatelessWidget {
  const NoChatsScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<NoChatsBloc>(
      create: (context) => NoChatsBloc(NoChatsState(
        noChatsModelObj: NoChatsModel(),
      ))
        ..add(NoChatsInitialEvent()),
      child: NoChatsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoChatsBloc, NoChatsState>(
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
                    imagePath: ImageConstant.imgUploadRafiki12,
                    height: 331.adaptSize,
                    width: 331.adaptSize,
                  ),
                  SizedBox(height: 6.v),
                  Text(
                    "lbl_no_chats".tr,
                    style: CustomTextStyles.titleMediumErrorContainer,
                  ),
                  SizedBox(height: 15.v),
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
        text: "lbl_chats".tr,
        margin: EdgeInsets.only(left: 11.h),
      ),
    );
  }
}
