import 'bloc/chats_one_bloc.dart';
import 'models/chats_one_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:sanjay_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sanjay_s_application2/widgets/custom_elevated_button.dart';
import 'package:sanjay_s_application2/widgets/custom_icon_button.dart';
import 'package:sanjay_s_application2/widgets/custom_text_form_field.dart';

class ChatsOneScreen extends StatelessWidget {
  const ChatsOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ChatsOneBloc>(
      create: (context) => ChatsOneBloc(ChatsOneState(
        chatsOneModelObj: ChatsOneModel(),
      ))
        ..add(ChatsOneInitialEvent()),
      child: ChatsOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 22.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Spacer(),
              Container(
                height: 35.v,
                width: 48.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.fillPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgText,
                  height: 20.v,
                  width: 16.h,
                  alignment: Alignment.topCenter,
                ),
              ),
              SizedBox(height: 16.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(right: 124.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.h,
                    vertical: 2.v,
                  ),
                  decoration: AppDecoration.outlineGray20001.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder16,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 3.v),
                      SizedBox(
                        width: 171.h,
                        child: Text(
                          "msg_hey_my_friend_i".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyMediumGray900.copyWith(
                            height: 1.20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.v),
              Container(
                margin: EdgeInsets.only(left: 229.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 3.v,
                ),
                decoration: AppDecoration.fillPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 4.v),
                    SizedBox(
                      width: 66.h,
                      child: Text(
                        "lbl_wes_what_s_up".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.right,
                        style: CustomTextStyles.bodyMediumWhiteA700.copyWith(
                          height: 1.20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 35.v),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "lbl_today".tr,
                  style: CustomTextStyles.bodySmallGray50003,
                ),
              ),
              SizedBox(height: 15.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(right: 109.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.h,
                    vertical: 4.v,
                  ),
                  decoration: AppDecoration.outlineGray20001.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder16,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 3.v),
                      Text(
                        "msg_are_you_finished".tr,
                        style: CustomTextStyles.bodyMediumGray900,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(right: 121.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.h,
                    vertical: 2.v,
                  ),
                  decoration: AppDecoration.outlineGray20001.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder16,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 4.v),
                      SizedBox(
                        width: 172.h,
                        child: Text(
                          "msg_there_is_an_idea".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyMediumGray900.copyWith(
                            height: 1.20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.v),
              CustomElevatedButton(
                height: 33.v,
                width: 117.h,
                text: "lbl_almost_there".tr,
                buttonStyle: CustomButtonStyles.fillPrimaryTL16,
                buttonTextStyle: CustomTextStyles.bodyMediumWhiteA700,
              ),
              SizedBox(height: 4.v),
              Padding(
                padding: EdgeInsets.only(right: 16.h),
                child: Text(
                  "lbl_seen".tr,
                  style: CustomTextStyles.bodySmallGray50003,
                ),
              ),
              SizedBox(height: 10.v),
              _buildMessageRow(context),
            ],
          ),
        ),
      ),
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
      title: AppbarTitle(
        text: "lbl_alex_linderson".tr,
        margin: EdgeInsets.only(left: 15.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgPhoneCallIcon,
          margin: EdgeInsets.fromLTRB(18.h, 15.v, 18.h, 8.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildMessageRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child:
              BlocSelector<ChatsOneBloc, ChatsOneState, TextEditingController?>(
            selector: (state) => state.messageController,
            builder: (context, messageController) {
              return CustomTextFormField(
                controller: messageController,
                hintText: "lbl_type_a_message".tr,
                hintStyle: CustomTextStyles.bodyLargeGray50003,
                textInputAction: TextInputAction.done,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 7.v,
                ),
                borderDecoration: TextFormFieldStyleHelper.fillGray,
                fillColor: appTheme.gray20001,
              );
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 9.h),
          child: CustomIconButton(
            height: 35.adaptSize,
            width: 35.adaptSize,
            padding: EdgeInsets.all(8.h),
            decoration: IconButtonStyleHelper.fillPrimaryTL17,
            child: CustomImageView(
              imagePath: ImageConstant.imgSave,
            ),
          ),
        ),
      ],
    );
  }
}
